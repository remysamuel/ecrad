! (C) Copyright 2014- ECMWF.
!
! This software is licensed under the terms of the Apache Licence Version 2.0
! which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
!
! In applying this licence, ECMWF does not waive the privileges and immunities
! granted to it by virtue of its status as an intergovernmental organisation
! nor does it submit to any jurisdiction.

MODULE MPL_MODULE

USE PARKIND1, ONLY : JPRB, JPIM

IMPLICIT NONE

PRIVATE

INTERFACE MPL_BROADCAST

  MODULE PROCEDURE MPL_BROADCAST_REAL81, MPL_BROADCAST_REAL82, &
       &           MPL_BROADCAST_REAL83, MPL_BROADCAST_REAL84, &
       &           MPL_BROADCAST_REAL86, MPL_BROADCAST_REAL85, &
       &           MPL_BROADCAST_CHAR2


END INTERFACE MPL_BROADCAST

PUBLIC MPL_BROADCAST, MPL_MYRANK, MPL_NPROC

CONTAINS

SUBROUTINE MPL_BROADCAST_REAL81(KBUF,KTAG,KROOT,CDSTRING)
REAL(JPRB)                  :: KBUF(:)
INTEGER,INTENT(IN)          :: KTAG
INTEGER,INTENT(IN),OPTIONAL :: KROOT
CHARACTER*(*),INTENT(IN)    :: CDSTRING
END SUBROUTINE MPL_BROADCAST_REAL81

SUBROUTINE MPL_BROADCAST_REAL82(KBUF,KTAG,KROOT,CDSTRING)
REAL(JPRB)                  :: KBUF(:,:)
INTEGER,INTENT(IN)          :: KTAG
INTEGER,INTENT(IN),OPTIONAL :: KROOT
CHARACTER*(*),INTENT(IN)    :: CDSTRING
END SUBROUTINE MPL_BROADCAST_REAL82

SUBROUTINE MPL_BROADCAST_REAL83(KBUF,KTAG,KROOT,CDSTRING)
REAL(JPRB)                  :: KBUF(:,:,:)
INTEGER,INTENT(IN)          :: KTAG
INTEGER,INTENT(IN),OPTIONAL :: KROOT
CHARACTER*(*),INTENT(IN)    :: CDSTRING
END SUBROUTINE MPL_BROADCAST_REAL83

SUBROUTINE MPL_BROADCAST_REAL84(KBUF,KTAG,KROOT,CDSTRING)
REAL(JPRB)                  :: KBUF(:,:,:,:)
INTEGER,INTENT(IN)          :: KTAG
INTEGER,INTENT(IN),OPTIONAL :: KROOT
CHARACTER*(*),INTENT(IN)    :: CDSTRING
END SUBROUTINE MPL_BROADCAST_REAL84

SUBROUTINE MPL_BROADCAST_REAL86(KBUF,KTAG,KROOT,KMP_TYPE,KCOMM,KERROR,KREQUEST,CDSTRING)
REAL(JPRB)                  :: KBUF(:,:,:,:,:,:)
INTEGER,INTENT(IN)          :: KTAG
INTEGER,INTENT(IN),OPTIONAL :: KROOT,KCOMM,KMP_TYPE
INTEGER,INTENT(OUT),OPTIONAL:: KERROR,KREQUEST
CHARACTER*(*),INTENT(IN),OPTIONAL    :: CDSTRING
END SUBROUTINE MPL_BROADCAST_REAL86

SUBROUTINE MPL_BROADCAST_REAL85(KBUF,KTAG,KROOT,KMP_TYPE,KCOMM,KERROR,KREQUEST,CDSTRING)
REAL(JPRB)                  :: KBUF(:,:,:,:,:)
INTEGER,INTENT(IN)          :: KTAG
INTEGER,INTENT(IN),OPTIONAL :: KROOT,KCOMM,KMP_TYPE
INTEGER,INTENT(OUT),OPTIONAL:: KERROR,KREQUEST
CHARACTER*(*),INTENT(IN),OPTIONAL    :: CDSTRING
END SUBROUTINE MPL_BROADCAST_REAL85

SUBROUTINE MPL_BROADCAST_CHAR2(CDBUF,KTAG,KROOT,KMP_TYPE,KCOMM,KERROR,KREQUEST,CDSTRING)
CHARACTER*(*)               :: CDBUF(:,:)
INTEGER,INTENT(IN)          :: KTAG
INTEGER,INTENT(IN),OPTIONAL :: KROOT,KCOMM,KMP_TYPE
INTEGER,INTENT(OUT),OPTIONAL:: KERROR,KREQUEST
CHARACTER*(*),INTENT(IN),OPTIONAL    :: CDSTRING
END SUBROUTINE MPL_BROADCAST_CHAR2

FUNCTION MPL_MYRANK()
  INTEGER(JPIM) :: MPL_MYRANK
  MPL_MYRANK = 1
END FUNCTION MPL_MYRANK

FUNCTION MPL_NPROC()
  INTEGER(JPIM) :: MPL_NPROC
  MPL_NPROC = 1
END FUNCTION MPL_NPROC

END MODULE MPL_MODULE
