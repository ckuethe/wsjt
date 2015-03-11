subroutine jt4a(dat,jz)

  real dat(jz)
  real ccf(-5:540)
  real psavg(450)
  real ps0(450)
  character*6 cfile6
  character*12 mycall,hiscall
  character*6 hisgrid
  logical lcum

  NClearAve=0
  MinSigdB=0
  ntol=600
  NFreeze=0
  mode=7
  mode4=1
  minwidth=1                      !MinW ?
  mycall='K1JT'
  hiscall='VK7MO'
  hisgrid='QE37'
  Nseg=1                          !???
  MouseDF2=0
  NAgain=0
  ndepth=3
  neme=1
  idf=0                           !???
  lumsg=6                         !### temp ? ###
  lcum=.true.
  ndiag=1

! Lowpass filter and decimate by 2
  call lpf1(dat,jz,jz2)
  nadd=1

  i=index(MyCall,char(0))
  if(i.le.0) i=index(MyCall,' ')
  mycall=MyCall(1:i-1)//'            '
  i=index(HisCall,char(0))
  if(i.le.0) i=index(HisCall,' ')
  hiscall=HisCall(1:i-1)//'            '

  call wsjt4(dat,jz2,cfile6,NClearAve,MinSigdB,                          &
       ntol,NFreeze,mode,mode4,minwidth,mycall,hiscall,hisgrid,   &
       Nseg,MouseDF2,NAgain,ndepth,neme,idf,lumsg,lcum,nspecial,ndf,     &
       NSyncOK,ccf,psavg,ndiag,ps0)

  return
end subroutine jt4a
