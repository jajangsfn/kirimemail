@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../paragonie/pharaoh/pharaoh
bash "%BIN_TARGET%" %*
