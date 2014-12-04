#include "astro.h"
#include "ui_astro.h"
#include <QDebug>
#include <QFile>
#include <QMessageBox>
#include <stdio.h>
#include "commons.h"

Astro::Astro(QWidget *parent) :
  QWidget(parent),
  ui(new Ui::Astro)
{
  ui->setupUi(this);
  ui->astroTextBrowser->setStyleSheet(
        "QTextBrowser { background-color : cyan; color : black; }");
  ui->astroTextBrowser->clear();
}

Astro::~Astro()
{
    delete ui;
}

void Astro::astroUpdate(QDateTime t, QString mygrid, double freq)
{
  static bool astroBusy=false;
  char cc[300];
  double azsun,elsun,azmoon,elmoon,azmoondx,elmoondx;
  double ramoon,decmoon,dgrd,poloffset,xnr;
  int ntsky,ndop,ndop00;
  QString date = t.date().toString("yyyy MMM dd");
  QString utc = t.time().toString();
  int nyear=t.date().year();
  int month=t.date().month();
  int nday=t.date().day();
  int nhr=t.time().hour();
  int nmin=t.time().minute();
  double sec=t.time().second() + 0.001*t.time().msec();
  double uth=nhr + nmin/60.0 + sec/3600.0;
  int nfreq=freq+0.5;
  if(nfreq<10 or nfreq > 50000) nfreq=144;

  qDebug() << mygrid;
  if(!astroBusy) {
    astroBusy=true;
    astrosub_(&nyear, &month, &nday, &uth, &nfreq, mygrid.toLatin1(),
            mygrid.toLatin1(), &azsun, &elsun, &azmoon, &elmoon,
            &azmoondx, &elmoondx, &ntsky, &ndop, &ndop00,&ramoon, &decmoon,
            &dgrd, &poloffset, &xnr, 6, 6);
    astroBusy=false;
  }
  datcom_.ndop=ndop;
  sprintf(cc,
          "Az:    %6.1f\n"
          "El:    %6.1f\n"
          "Dop:   %6d\n"
          "Dec:   %6.1f\n"
          "Freq:  %6d\n"
          "Tsky:  %6d\n"
          "Dgrd:  %6.1f",
          azmoon,elmoon,ndop00,decmoon,nfreq,ntsky,dgrd);
  ui->astroTextBrowser->setText(" "+ date + "\nUTC: " + utc + "\n" + cc);
}

void Astro::setFontSize(int n)
{
  ui->astroTextBrowser->setFontPointSize(n);
}
