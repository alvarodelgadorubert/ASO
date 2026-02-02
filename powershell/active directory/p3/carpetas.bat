@echo off
powershell -Command "New-SmbMapping -LocalPath 'Y:' -RemotePath '\\Empresa-dc1\Empresa'" >nul 2>&1