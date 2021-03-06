subroutine wsjtgen

! Compute the waveform to be transmitted.  

! Input:    txmsg        message to be transmitted, up to 28 characters
!           samfacout    fsample_out/11025.d0

! Output:   iwave        waveform data, i*2 format
!           nwave        number of samples
!           sendingsh    0=normal; 1=shorthand; -1=plain text; 2=test file

  parameter (NMSGMAX=28)             !Max characters per message
  parameter (NSPD=25)                !Samples per dit
  parameter (NDPC=3)                 !Dits per character
  parameter (NWMAX=150*11025)        !Max length of Tx waveform
  parameter (NTONES=4)               !Number of FSK tones

  integer   itone(84)
  character msg*28,msgsent*28,idmsg*22,msg22*22
  real*8 freq,pha,dpha,twopi,dt
  character testfile*27,tfile2*80
  logical lcwid
  integer*2 icwid(110250),jwave(NWMAX)

  integer*1 hdr(44)
  integer*2 nfmt2,nchan2,nbitsam2,nbytesam2
  character*4 ariff,awave,afmt,adata
  common/hdr/ariff,lenfile,awave,afmt,lenfmt,nfmt2,nchan2, &
     nsamrate,nbytesec,nbytesam2,nbitsam2,adata,ndata,jwave
  equivalence (ariff,hdr)

  data twopi/6.28318530718d0/
  include 'gcom1.f90'
  include 'gcom2.f90'

  call cs_lock('wsjtgen')
  fsample_out=11025.d0*samfacout
  if(abs(samfacout-1.d0).gt.0.02d0) fsample_out=1.d0

  if(mode(1:4).eq.'Echo') then
     dither=ndither
     call echogen(necho,dither,iwave,nwave,fecho)        !### Samfacout ???
     goto 999
  endif

  lcwid=.false.
  if(idinterval.gt.0) then
     n=(mod(int(tsec/60.d0),idinterval))
     if(n.eq.(1-txfirst)) lcwid=.true.
     if(idinterval.eq.1) lcwid=.true.
  endif

  msg=txmsg
  ntxnow=ntxreq
! Convert all letters to upper case
  do i=1,28
     if(msg(i:i).ge.'a' .and. msg(i:i).le.'z')                  &
          msg(i:i)= char(ichar(msg(i:i))+ichar('A')-ichar('a'))
  enddo
  txmsg=msg

! Find message length
  do i=NMSGMAX,1,-1
     if(msg(i:i).ne.' ') go to 10
  enddo
  i=1
10 nmsg=i
  nmsg0=nmsg

  if(msg(1:1).eq.'@') then
     if(msg(2:2).eq.'/' .or. ichar(msg(2:2)).eq.92) then
        txmsg=msg
        testfile=msg(2:)
        tfile2=testfile
        call rfile2(tfile2,hdr,44+2*120*11025,nr)
        if(nr.le.0) then
           print*,'Error reading ',testfile
           stop
        endif
        do i=1,ndata/2
           iwave(i)=jwave(i)
        enddo

        nwave=ndata/2
        do i=nwave,NTXMAX
           iwave(i)=0
        enddo
        sending=txmsg
        sendingsh=2
        go to 999
     endif

! Transmit a fixed tone at specified frequency
     freq=1000.0
     if(msg(2:2).eq.'A' .or. msg(2:2).eq.'a') freq=882
     if(msg(2:2).eq.'B' .or. msg(2:2).eq.'b') freq=1323
     if(msg(2:2).eq.'C' .or. msg(2:2).eq.'c') freq=1764
     if(msg(2:2).eq.'D' .or. msg(2:2).eq.'d') freq=2205
     if(freq.eq.1000.0) then
        read(msg(2:),*,err=1) freq
        goto 2
1       txmsg='@1000'
        nmsg=5
        nmsg0=5
     endif
2    nwave=60*fsample_out
     dpha=twopi*freq/fsample_out
     do i=1,nwave
        iwave(i)=32767.0*sin(i*dpha)
     enddo
     goto 900
  endif

  dt=1.d0/fsample_out
  LTone=2

  if(mode(1:4).eq.'JT65' .or. mode(1:3).eq.'JT4' .or.                &
       mode(1:5).eq. 'ISCAT' .or. mode(1:4).eq.'JTMS') then
     if(mode(1:4).eq.'JT65') then
!  We're in JT65 mode.
        if(mode(5:5).eq.'A') mode65=1
        if(mode(5:5).eq.'B') mode65=2
        if(mode(5:5).eq.'C') mode65=4
        nfast=1
        if((mode(5:5).eq.'B' .or. mode(5:5).eq.'C') .and.            &
             mode(6:6).eq.'2') nfast=2
        call gen65(msg,mode65,nfast,samfacout,ntxdf,iwave,nwave,     &
             sendingsh,msg22,nmsg0)
        msgsent=msg22
     else if(mode(1:5).eq.'ISCAT') then
        call geniscat(msg,nmsg,mode4,samfacout,iwave,nwave,msgsent)
        sendingsh=0
        if(txsnrdb.gt.0.d0 .and. txsnrdb.lt.40.d0) call makepings(iwave,nwave)
     else if(mode(1:4).eq.'JTMS') then
        if(shok.eq.1 .and.                                                &
           (msg(1:4).eq.'R26 ' .or. msg(1:4).eq.'R27 ' .or.               &
                msg(1:4).eq.'RRR ' .or. msg(1:3).eq.'73 ')) go to 100
        call genms(msg,samfacout,iwave,cwave,0,nwave)
        if(txsnrdb.lt.40.d0) call makepings(iwave,nwave)
        sendingsh=0
        msgsent=msg
     else if(mode(1:3).eq.'JT4' ) then
        call gen4(msg,mode4,samfacout,ntxdf,iwave,nwave,                  &
             sendingsh,msg22,nmsg0)
        msgsent=msg22
     else
        stop 'Unknown Tx mode requested.'
     endif

     if(lcwid) then
!  Generate and insert the CW ID.
        wpm=25.
        freqcw=800.
        idmsg=MyCall//'          '
        call gencwid(idmsg,wpm,freqcw,samfacout,icwid,ncwid)
        k=nwave
        do i=1,ncwid
           k=k+1
           iwave(k)=icwid(i)
        enddo
        do i=1,2205                   !Add 0.2 s of silence
           k=k+1
           iwave(k)=0
        enddo
        nwave=k
     endif

     goto 900
  endif

  if(mode(1:4).eq.'JT6M') then
!  We're in JT6M mode.
     call gen6m(msg,samfacout,iwave,nwave)
     goto 900
  endif

  if(mode(1:2).eq.'CW') then
!  We're in CW mode
!     wpm=15.
     wpm=ncwspeed
     freqcw=800.
     call gencw(msg,wpm,freqcw,samfacout,trperiod,iwave,nwave)
     goto 900
  endif

!  We're in FSK441 mode.
  if(nmsg.lt.28) nmsg=nmsg+1          !Add trailing blank if nmsg < 28

!  Check for shorthand messages
100 sendingsh = 0
  if(shok.eq.1) then
     if (msg(1:4).eq.'R26 ') then
        msg='++'
        nmsg=2
        sendingsh = 1
     else if (msg(1:4).eq.'R27 ') then
        msg='**'
        nmsg=2
        sendingsh = 1
     else if (msg(1:4).eq.'RRR ') then
        msg='%%'
        nmsg=2
        sendingsh = 1
     else if (msg(1:3).eq.'73 ') then
        msg='@@'
        nmsg=2
        sendingsh = 1
     endif
     if(sendingsh.eq.1) then
        i1=index(txmsg,' ')
        txmsg=txmsg(1:i1)
     endif
  endif

! Encode the message
  call abc441(msg,nmsg,itone,ndits)
  ndata=ndits*nspd

! Generate iwave
  k=0
  df=11025.0/NSPD
  pha=0.
  nrpt=30*11025/(NSPD*ndits)
  do irpt=1,nrpt
     do m=1,ndits
        freq=(LTone-1+itone(m))*df
        dpha=twopi*freq*dt
        do i=1,NSPD
           k=k+1
           pha=pha+dpha
           iwave(k)=nint(32767.0*sin(pha))
        enddo
     enddo
  enddo
  nwave=k

  if(txsnrdb.lt.40.d0) call makepings(iwave,nwave)
  
900 sending=txmsg
  if(mode(1:4).eq.'JT65' .and. sendingsh.ne.1) then
     sending=msgsent
     if(msg(1:1).eq.'@') sending=msg
  endif
  if(mode(1:3).eq.'JT4' .or. mode(1:5).eq.'ISCAT') then
     sending=msgsent
     if(msg(1:1).eq.'@') sending=msg
  endif
  do i=NMSGMAX,1,-1
     if(sending(i:i).ne.' '.and. ichar(sending(i:i)).ne.0) go to 910
  enddo
  i=1
910 nmsg=i

  if(lcwid .and. (mode.eq.'FSK441' .or. mode(1:4).eq.'JTMS' .or.   &
       mode(1:4).eq.'JT6M')) then
!  Generate and insert the CW ID.
     wpm=25.
     freqcw=440.
     idmsg=MyCall//'          '
     call gencwid(idmsg,wpm,freqcw,samfacout,icwid,ncwid)
     k=0
     do i=ncwid+1,int(trperiod*fsample_out)
        k=k+1
        if(k.gt.nwave) k=k-nwave
        iwave(i)=iwave(k)
     enddo
     do i=1,ncwid
        iwave(i)=icwid(i)
     enddo
     nwave=trperiod*fsample_out
  endif

999 continue
  call cs_unlock
  if(txsnrdb.lt.40.d0) then
     s=abs(txsnrdb)
     fspread=1000.0*(s-int(s))
     if(fspread.gt.0.0) call spread(iwave,nwave,fspread,iwave)
  endif
  return
end subroutine wsjtgen

