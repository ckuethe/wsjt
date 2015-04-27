// -*- Mode: C++ -*-
///////////////////////////////////////////////////////////////////////////
// Some code in this file and accompanying files is based on work by
// Moe Wheatley, AE4Y, released under the "Simplified BSD License".
// For more details see the accompanying file LICENSE_WHEATLEY.TXT
///////////////////////////////////////////////////////////////////////////

#ifndef PLOTTER_H
#define PLOTTER_H

#ifdef QT5
#include <QtWidgets>
#else
#include <QtGui>
#endif
#include <QFrame>
#include <QImage>
#include <QVector>
#include <cstring>
#include "commons.h"

#define VERT_DIVS 7	//specify grid screen divisions
#define HORZ_DIVS 20

class CPlotter : public QFrame
{
  Q_OBJECT;

public:
  explicit CPlotter(QWidget *parent = 0);
  ~CPlotter();

  QSize minimumSizeHint() const;
  QSize sizeHint() const;
  void draw(float sw[]);		//Update the waterfall
  void SetRunningState(bool running);
  void setPlotZero(int plotZero);
  int  getPlotZero();
  void setPlotGain(int plotGain);
  int  getPlotGain();
  void setStartFreq(int f);
  int startFreq();
  int  plotWidth();
  void setNSpan(int n);
  int nSpan() const {return m_nSpan;}
  void UpdateOverlay();
  void setDataFromDisk(bool b);
  void setRxRange(int fMin);
  void setBinsPerPixel(int n);
  int  binsPerPixel();
  void setRxFreq(int n);
  void DrawOverlay();
  int  rxFreq();
  void setFsample(int n);
  void setNsps(int ntrperiod, int nsps);
  void setTxFreq(int n);
  void setMode(QString mode);
  void setModeTx(QString modeTx);
  double fGreen();
  void SetPercent2DScreen(int percent){m_Percent2DScreen=percent;}
  int getFmax();
  void setDialFreq(double d);
  void setCurrent(bool b) {m_bCurrent = b;}
  bool current() const {return m_bCurrent;}
  void setCumulative(bool b) {m_bCumulative = b;}
  bool cumulative() const {return m_bCumulative;}
  void setLinearAvg(bool b) {m_bLinearAvg = b;}
  bool linearAvg() const {return m_bLinearAvg;}
  void setBreadth(qint32 w) {m_w = w;}
  qint32 breadth() const {return m_w;}
  float fSpan() const {return m_fSpan;}
  void setLockTxFreq(bool b) {m_lockTxFreq = b;}
  void setColours(QVector<QColor> const& cl) {m_ColorTbl = cl;}
  void setFlatten(bool b);

signals:
  void freezeDecode1(int n);
  void setFreq1(int rxFreq, int txFreq);

protected:
  //re-implemented widget event handlers
  void paintEvent(QPaintEvent *event);
  void resizeEvent(QResizeEvent* event);

private:

  void MakeFrequencyStrs();
  void UTCstr();
  int XfromFreq(float f);
  float FreqfromX(int x);

  QVector<QColor> m_ColorTbl;

  bool    m_bCurrent;
  bool    m_bCumulative;
  bool    m_bLinearAvg;
  bool    m_lockTxFreq;

  float   m_fSpan;

  qint32  m_plotZero;
  qint32  m_plotGain;
  qint32  m_nSpan;
  qint32  m_binsPerPixel;
  qint32  m_w;
  qint32  m_Flatten;

  QPixmap m_WaterfallPixmap;
  QPixmap m_2DPixmap;
  QPixmap m_ScalePixmap;
  QPixmap m_OverlayPixmap;
//  QPixmap m_LowerScalePixmap;
  QSize   m_Size;
  QString m_Str;
  QString m_HDivText[483];
  QString m_mode;
  QString m_modeTx;

  bool    m_Running;
  bool    m_paintEventBusy;
  bool    m_dataFromDisk;

  double  m_fGreen;
  double  m_fftBinWidth;
  double  m_dialFreq;
  double  m_xOffset;

  qint32  m_dBStepSize;
  qint32  m_FreqUnits;
  qint32  m_hdivs;
  qint32  m_line;
  qint32  m_fSample;
  qint32  m_xClick;
  qint32  m_freqPerDiv;
  qint32  m_nsps;
  qint32  m_Percent2DScreen;
  qint32  m_h;
  qint32  m_h1;
  qint32  m_h2;
  qint32  m_TRperiod;
  qint32  m_rxFreq;
  qint32  m_txFreq;
  qint32  m_fMin;
  qint32  m_fMax;
  qint32  m_startFreq;

  char    m_sutc[6];

private slots:
  void mousePressEvent(QMouseEvent *event);
  void mouseDoubleClickEvent(QMouseEvent *event);
};

extern "C" {
  void flat4_(float swide[], int* iz, int* nflatten);
}

#endif // PLOTTER_H
