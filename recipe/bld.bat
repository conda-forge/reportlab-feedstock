set FT_LIB=%LIBRARY_LIB%\freetype.lib
set FT_INC=%LIBRARY_INC%\

%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1

%PYTHON% setup.py tests
if errorlevel 1 exit 1
