7-Zip
=====

This is just a fork of 7-Zip archiver tool with minor modifications and a build script.

Modifications
-------------

- Implement `-ba` switch which disables log output completely (silent mode). In fact, it was already introduced in sources but without implementation. Hope I did it right.

- Add project "AloneFull" which builds stand-alone executable named `7zf.exe` with full archive types support (usual `7za.exe` doesn't support full set of archive types)