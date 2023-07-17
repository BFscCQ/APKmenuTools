@ECHO OFF

set currPath=%~dp0
cd %~dp0
cd..
set parentPath=%cd%
::

apksigner sign --ks %parentPath%\tools\test.jks --ks-pass pass:123456 --v1-signing-enabled false --v2-signing-enabled true --v3-signing-enabled false --out "%~f1.signed.apk" "%~f1"
