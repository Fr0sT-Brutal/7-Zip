7-Zip
=====

This is just a fork of 7-Zip archiver tool with minor modifications and a build script. Original project is [here](https://sourceforge.net/p/sevenzip)

Repo has the following branches:

- `upstream` - the original sources that are added from time to time (not very frequently though)
- `mod` - only my modifications. Probably it could be overwritten if some changes will be merged into upstream or become obsolete or whatever. But it always will contain fully mergeable set of changes.
- `master` - result of merging `mod` into `upstream`. Very likely to be overwritten frequently.


Modifications
-------------

- Implement `-ba` switch which disables log output completely (silent mode). In fact, it was already introduced in sources but without implementation. Hope I did it right.

- Add project "AloneFull" which builds stand-alone executable named `7zf.exe` with full archive types support (usual `7za.exe` doesn't support full set of archive types)

Note - how to build in VS 2010
------------------------------

- Open project in VS2010
- Open `Project options > Config`
	- Set `> General > Platform toolset` to `Windows7 SDK`
	- Set `> Linker > Output` to `Inherit`
	- Set `> Manifest tool > Embed manifest` to `No`
- I had to comment out usage of `My_SetDefaultDllDirectories` in `\CPP\7zip\UI\Console\MainAr.cpp` or linker failed with "unresolved external" error