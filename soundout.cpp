#include "soundout.h"

#define FRAMES_PER_BUFFER 256

extern "C" {
#include <portaudio.h>
}

extern float gran();                  //Noise generator (for tests only)

extern short int iwave[2*60*11025];   //Wave file for Tx audio
extern int nwave;
extern bool btxok;
extern bool bTune;
extern int iqAmp;
extern int iqPhase;
extern int txPower;
extern double outputLatency;


typedef struct   //Parameters sent to or received from callback function
{
  int nTRperiod;
} paUserData;

//--------------------------------------------------------------- d2aCallback
extern "C" int d2aCallback(const void *inputBuffer, void *outputBuffer,
                           unsigned long framesToProcess,
                           const PaStreamCallbackTimeInfo* timeInfo,
                           PaStreamCallbackFlags statusFlags,
                           void *userData )
{
  paUserData *udata=(paUserData*)userData;
  short *wptr = (short*)outputBuffer;
  unsigned int i;
  static int n;
  static int ic=0;
  static bool btxok0=false;
  static int nStart=0;
  double tsec,tstart;
  int nsec;
  int nTRperiod=udata->nTRperiod;


  // Get System time
  qint64 ms = QDateTime::currentMSecsSinceEpoch() % 86400000;
  tsec = 0.001*ms;
  nsec = ms/1000;

  static int nsec0=0;
  if(nsec!=nsec0) {
    qDebug() << txPower << iqAmp << iqPhase << bTune;
    nsec0=nsec;
  }

  if(btxok and !btxok0) {       //Start (or re-start) a transmission
    n=nsec/nTRperiod;
    tstart=tsec - n*nTRperiod - 1.0;

    if(tstart<1.0) {
      ic=0;                      //Start of Tx cycle, set starting index to 0
      nStart=n;
    } else {
      if(n != nStart) { //Late start in new Tx cycle: compute starting index
        ic=(int)(tstart*11025.0);
        ic=2*ic;
        nStart=n;
      }
    }
  }
  btxok0=btxok;

  if(btxok) {
    for(i=0 ; i<framesToProcess; i++ )  {
        short int i2a=iwave[ic++];
        short int i2b=iwave[ic++];
      if(ic > nwave) {i2a=0; i2b=0;}
//      i2 = 500.0*(i2/32767.0 + 5.0*gran());      //Add noise (tests only!)
      *wptr++ = i2a;                     //left
      *wptr++ = i2b;                     //right
    }
  } else {
    for(i=0 ; i<framesToProcess; i++ )  {
      *wptr++ = 0;
      *wptr++ = 0;
      ic++; ic++;
    }
  }
  if(ic > nwave) {
    btxok=0;
    ic=0;
  }
  return 0;
}

void SoundOutThread::run()
{
  PaError paerr;
  PaStreamParameters outParam;
  PaStream *outStream;
  paUserData udata;
  quitExecution = false;

  outParam.device=m_nDevOut;                 //Output device number
  outParam.channelCount=2;                   //Number of analog channels
  outParam.sampleFormat=paInt16;             //Send short ints to PortAudio
  outParam.suggestedLatency=0.05;
  outParam.hostApiSpecificStreamInfo=NULL;

  udata.nTRperiod=m_TRperiod;
  paerr=Pa_IsFormatSupported(NULL,&outParam,11025.0);
  if(paerr<0) {
    qDebug() << "PortAudio says requested output format not supported.";
    qDebug() << paerr;
    return;
  }
  paerr=Pa_OpenStream(&outStream,           //Output stream
        NULL,                               //No input parameters
        &outParam,                          //Output parameters
        11025.0,                            //Sample rate
        FRAMES_PER_BUFFER,                  //Frames per buffer
        paClipOff,                          //No clipping
        d2aCallback,                        //output callbeck routine
        &udata);                            //userdata

  paerr=Pa_StartStream(outStream);
  if(paerr<0) {
    qDebug() << "Failed to start audio output stream.";
    return;
  }
  const PaStreamInfo* p=Pa_GetStreamInfo(outStream);
  outputLatency = p->outputLatency;
  bool qe = quitExecution;

//---------------------------------------------- Soundcard output loop
  while (!qe) {
    qe = quitExecution;
    if (qe) break;
    msleep(100);
  }
  Pa_StopStream(outStream);
  Pa_CloseStream(outStream);
}

void SoundOutThread::setOutputDevice(int n)      //setOutputDevice()
{
  if (isRunning()) return;
  this->m_nDevOut=n;
}

void SoundOutThread::setPeriod(int n)
{
  m_TRperiod=n;
}
