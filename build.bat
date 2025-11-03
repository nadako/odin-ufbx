@echo off

call vcvarsall.bat amd64

cl -nologo -MT -TC -O2 -c -DUFBX_REAL_IS_FLOAT=1 upstream\ufbx.c
lib -nologo ufbx.obj -out:ufbx\ufbx.lib
del ufbx.obj
