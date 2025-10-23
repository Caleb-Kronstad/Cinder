@echo off

pushd ..

echo === Setting up ===
Premake\Windows\premake5.exe --file=Build.lua vs2022

echo === Setup complete ===

popd
pause