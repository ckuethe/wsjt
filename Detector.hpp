#ifndef DETECTOR_HPP__
#define DETECTOR_HPP__

#include "AudioDevice.hpp"

//
// output device that distributes data in predefined chunks via a signal
//
// the underlying device for this abstraction is just the buffer that
// stores samples throughout a receiving period
//
class Detector : public AudioDevice
{
  Q_OBJECT;

  Q_PROPERTY (bool monitoring READ isMonitoring WRITE setMonitoring);

public:
  //
  // if the data buffer were not global storage and fixed size then we
  // might want maximum size passed as constructor arguments
  //
  Detector (unsigned frameRate, unsigned periodLengthInSeconds, unsigned framesPerSignal, QObject * parent = 0);

  bool open (Channel channel = Mono) {return AudioDevice::open (QIODevice::WriteOnly, channel);}

  bool isMonitoring () const {return m_monitoring;}
  void setMonitoring (bool newState) {m_monitoring = newState;}

  bool reset ();

  Q_SIGNAL void framesWritten (qint64);

protected:
  qint64 readData (char * /* data */, qint64 /* maxSize */)
  {
    return -1;			// we don't produce data
  }

  qint64 writeData (char const * data, qint64 maxSize);

private:
  void clear ();		// discard buffer contents
  unsigned secondInPeriod () const;

  unsigned m_frameRate;
  unsigned m_period;
  unsigned m_framesPerSignal;
  bool m_monitoring;
  bool m_starting;
};

#endif