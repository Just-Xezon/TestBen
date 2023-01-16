@ECHO OFF

call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

SET includes=/Isrc /I%VULKAN_SDK%/Include
SET links=/link /LIBPATH:%VULKAN_SDK%/Lib vulkan-1.lib
SET defines=/D DEBUG

echo "Building main..."
if not exist "%{workspaceFolder}%/bin" mkdir bin

cd bin/
cl /EHsc %includes% %defines% ../src/main.cpp %links%