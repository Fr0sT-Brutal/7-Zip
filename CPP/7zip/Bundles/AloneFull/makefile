PROG = 7zf.exe
MY_CONSOLE = 1
CFLAGS = $(CFLAGS)

!IFNDEF UNDER_CE
CFLAGS = $(CFLAGS) -DWIN_LONG_PATH -D_7ZIP_LARGE_PAGES -DSUPPORT_DEVICE_FILE
!ENDIF

!include "../Format7zF/Arc.mak"

COMMON_OBJS = $(COMMON_OBJS) \
  $O\CommandLineParser.obj \
  $O\ListFileUtils.obj \
  $O\StdInStream.obj \
  $O\StdOutStream.obj \

WIN_OBJS = $(WIN_OBJS) \
  $O\DLL.obj \
  $O\ErrorMsg.obj \
  $O\FileLink.obj \
  $O\FileSystem.obj \
  $O\MemoryLock.obj \
  $O\PropVariantConv.obj \

7ZIP_COMMON_OBJS = $(7ZIP_COMMON_OBJS) \
  $O\FilePathAutoRename.obj \
  $O\FileStreams.obj \

!include "../../UI/Console/Console.mak"

!include "../../7zip.mak"
