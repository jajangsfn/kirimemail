@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../humbug/box/bin/box
php "%BIN_TARGET%" %*
