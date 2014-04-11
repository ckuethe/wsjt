#ifndef DETECTOR_HPP__
#define DETECTOR_HPP__

#include "AudioDevice.hpp"

#include <QScopedArrayPointer>

//
// output device that distributes data in predefined chunks via a signal
//
// the underlying device for this abstraction is just the buffer that
// stores samples throughout a receiving period
//
class Detector : public AudioDevice
{
  Q_OBJECT;

public:
  //
  // if the data buffer were not global storage and fixed size then we
  // might want maximum size passed as constructor arguments
  //
  // we down sample by a factor of 4
  //
  // the framesPerSignal argument is the number after down sampling
  //
  Detector (unsigned frameRate, unsigned periodLengthInSeconds, unsigned framesPerSignal, unsigned downSampleFactor = 4u, QObject * parent = 0);

  Q_SIGNAL void framesWritten (qint64) const;

  bool reset () override;

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
  unsigned m_downSampleFactor;
  qint32 m_framesPerSignal;	// after any down sampling
  bool m_starting;
  QScopedArrayPointer<short> m_buffer; // de-interleaved sample buffer
  // big enough for all the
  // samples for one increment of
  // data (a signals worth) at
  // the input sample rate
  unsigned m_bufferPos;
};

#endif