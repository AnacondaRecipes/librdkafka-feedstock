mkdir build
cd build
cmake ^
  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
  -DCMAKE_FIND_ROOT_PATH="%LIBRARY_PREFIX%" ^
  -DCMAKE_LIBRARY_PATH:FILEPATH="=%LIBRARY_LIB%" ^
  -DCMAKE_INSTALL_LIBDIR=%LIBRARY_LIB% ^
  -DCMAKE_BUILD_TYPE:String=Release ^
  -GNinja ^
  -DLZ4_LIBRARY=%LIBRARY_LIB%\liblz4.lib ^
  ..

if errorlevel 1 exit 1
ninja
ninja install
if errorlevel 1 exit 1