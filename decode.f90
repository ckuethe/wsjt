!-------------------------------------------------------------------------------
!
! This file is part of the WSPR application, Weak Signal Propagation Reporter
!
! File Name:    decode.f90
! Description:
!
! Copyright (C) 2001-2014 Joseph Taylor, K1JT
! License: GPL-3
!
! This program is free software; you can redistribute it and/or modify it under
! the terms of the GNU General Public License as published by the Free Software
! Foundation; either version 3 of the License, or (at your option) any later
! version.
!
! This program is distributed in the hope that it will be useful, but WITHOUT
! ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
! FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
! details.
!
! You should have received a copy of the GNU General Public License along with
! this program; if not, write to the Free Software Foundation, Inc., 51 Franklin
! Street, Fifth Floor, Boston, MA 02110-1301, USA.
!
!-------------------------------------------------------------------------------
subroutine decode

!  Decode WSPR signals for one 2-minute sequence.

  character*80 savefile
  real*8 df,fpeak
  real x(65536)
  complex c(0:32768)
  equivalence (x,c)
  include 'acom1.f90'

  f0b=f0a
  if(ncal.eq.2) then
     fac=1.e-6
     do i=1,65536
        x(i)=fac*iwave(i)
     enddo
     call xfft(x,65536)
     df=12000.d0/65536.d0
     smax=0.
     do i=1,16384
        s=real(c(i))**2 + aimag(c(i))**2
        if(s.gt.smax) then
           smax=s
           fpeak=i*df
        endif
     enddo

     call cs_lock('decode')
     write(*,1002) fpeak
1002 format('Measured audio frequency:',f10.2,' Hz')
     ncal=0
     ndecoding=0
     call cs_unlock

     go to 900
  else
     ncmdline=0
!     npts=114*12000
!     if(ntrminutes.eq.15) npts=890*12000
     npts=120*12000
     if(ntrminutes.eq.15) npts=900*12000
     if(nsave.gt.0 .and. ndiskdat.eq.0) then
        savefile=appdir(:nappdir)//'/save/'//thisfile
        call wfile5(iwave,npts,12000,savefile)
     endif
!    Sivan Toledo: changed f0 to f0b below, to correct a reporting bug
!      that resulted in f0 being reported for spots even though f0 was
!      changed after the audio was captured.
     call mept162(thisfile,appdir,nappdir,f0b,ncmdline,iwave,npts,nbfo,ierr)
  endif

  call cs_lock('decode')
  write(14,1100)
1100 format('$EOF')
  call flush(14)
  rewind 14
  ndecdone=1
  ndecoding=0
  call cs_unlock

900  return
end subroutine decode