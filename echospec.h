#ifndef GETFILE_H
#define GETFILE_H
#include <QString>
#include <QFile>
#include <QDebug>
#include <QMessageBox>
#include <QDateTime>
#include "commons.h"

bool echospec(bool bSave, QString fname, bool bnetwork);
int ptt(int nport, int ntx, int* iptt, int* nopen);

extern "C" {
//----------------------------------------------------- C and Fortran routines

void avecho_( short id2[], int* ndop, int* nfrit, int* nsum,
              int* nclearave, int* nqual, float* f1, float* rms,
              float* sigdb, float* snr, float* dfreq, float* width,
              float blue[], float red[]);

void avecho65_(float dd[], float* dop, int* iping, int* i00, float* dphi,
               float* t0, float* f1a, float* dl, float* dc,
               float* pol, float* delta, float red[], float blue[]);
}
#endif // GETFILE_H
