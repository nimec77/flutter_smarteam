# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\app\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\app\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\nim\IdeaProjects\flutter_smarteam\windows

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

# Include any dependencies generated for this target.
include flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend.make
# Include the progress variables for this target.
include flutter\CMakeFiles\flutter_wrapper_plugin.dir\progress.make

# Include the compile flags for this target's objects.
include flutter\CMakeFiles\flutter_wrapper_plugin.dir\flags.make

..\flutter\ephemeral\flutter_windows.dll:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../flutter/ephemeral/flutter_windows.dll, ../../flutter/ephemeral/flutter_export.h, ../../flutter/ephemeral/flutter_windows.h, ../../flutter/ephemeral/flutter_messenger.h, ../../flutter/ephemeral/flutter_plugin_registrar.h, ../../flutter/ephemeral/flutter_texture_registrar.h, ../../flutter/ephemeral/cpp_client_wrapper/core_implementations.cc, ../../flutter/ephemeral/cpp_client_wrapper/standard_codec.cc, ../../flutter/ephemeral/cpp_client_wrapper/plugin_registrar.cc, ../../flutter/ephemeral/cpp_client_wrapper/flutter_engine.cc, ../../flutter/ephemeral/cpp_client_wrapper/flutter_view_controller.cc, _phony_"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	echo >nul && "C:\app\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E env FLUTTER_ROOT=C:\app\flutter PROJECT_DIR=C:\Users\nim\IdeaProjects\flutter_smarteam FLUTTER_ROOT=C:\app\flutter FLUTTER_EPHEMERAL_DIR=C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral PROJECT_DIR=C:\Users\nim\IdeaProjects\flutter_smarteam FLUTTER_TARGET=C:\Users\nim\IdeaProjects\flutter_smarteam\lib\main.dart DART_DEFINES=RkxVVFRFUl9XRUJfQVVUT19ERVRFQ1Q9dHJ1ZQ== DART_OBFUSCATION=false TRACK_WIDGET_CREATION=true TREE_SHAKE_ICONS=false PACKAGE_CONFIG=C:\Users\nim\IdeaProjects\flutter_smarteam\.dart_tool\package_config.json C:/app/flutter/packages/flutter_tools/bin/tool_backend.bat windows-x64 Debug
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

..\flutter\ephemeral\flutter_export.h: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\flutter_export.h

..\flutter\ephemeral\flutter_windows.h: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\flutter_windows.h

..\flutter\ephemeral\flutter_messenger.h: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\flutter_messenger.h

..\flutter\ephemeral\flutter_plugin_registrar.h: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\flutter_plugin_registrar.h

..\flutter\ephemeral\flutter_texture_registrar.h: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\flutter_texture_registrar.h

..\flutter\ephemeral\cpp_client_wrapper\core_implementations.cc: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\cpp_client_wrapper\core_implementations.cc

..\flutter\ephemeral\cpp_client_wrapper\standard_codec.cc: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\cpp_client_wrapper\standard_codec.cc

..\flutter\ephemeral\cpp_client_wrapper\plugin_registrar.cc: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\cpp_client_wrapper\plugin_registrar.cc

..\flutter\ephemeral\cpp_client_wrapper\flutter_engine.cc: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\cpp_client_wrapper\flutter_engine.cc

..\flutter\ephemeral\cpp_client_wrapper\flutter_view_controller.cc: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate ..\flutter\ephemeral\cpp_client_wrapper\flutter_view_controller.cc

flutter\_phony_: ..\flutter\ephemeral\flutter_windows.dll
	@$(CMAKE_COMMAND) -E touch_nocreate flutter\_phony_

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.obj: flutter\CMakeFiles\flutter_wrapper_plugin.dir\flags.make
flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.obj: ..\flutter\ephemeral\cpp_client_wrapper\core_implementations.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object flutter/CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/core_implementations.cc.obj"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.obj /FdCMakeFiles\flutter_wrapper_plugin.dir\flutter_wrapper_plugin.pdb /FS -c C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\core_implementations.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/core_implementations.cc.i"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\core_implementations.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/core_implementations.cc.s"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.s /c C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\core_implementations.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.obj: flutter\CMakeFiles\flutter_wrapper_plugin.dir\flags.make
flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.obj: ..\flutter\ephemeral\cpp_client_wrapper\standard_codec.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object flutter/CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/standard_codec.cc.obj"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.obj /FdCMakeFiles\flutter_wrapper_plugin.dir\flutter_wrapper_plugin.pdb /FS -c C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\standard_codec.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/standard_codec.cc.i"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\standard_codec.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/standard_codec.cc.s"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.s /c C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\standard_codec.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.obj: flutter\CMakeFiles\flutter_wrapper_plugin.dir\flags.make
flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.obj: ..\flutter\ephemeral\cpp_client_wrapper\plugin_registrar.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object flutter/CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/plugin_registrar.cc.obj"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.obj /FdCMakeFiles\flutter_wrapper_plugin.dir\flutter_wrapper_plugin.pdb /FS -c C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\plugin_registrar.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/plugin_registrar.cc.i"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe > CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\plugin_registrar.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flutter_wrapper_plugin.dir/ephemeral/cpp_client_wrapper/plugin_registrar.cc.s"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.s /c C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter\ephemeral\cpp_client_wrapper\plugin_registrar.cc
<<
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

# Object files for target flutter_wrapper_plugin
flutter_wrapper_plugin_OBJECTS = \
"CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.obj" \
"CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.obj" \
"CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.obj"

# External object files for target flutter_wrapper_plugin
flutter_wrapper_plugin_EXTERNAL_OBJECTS =

flutter\flutter_wrapper_plugin.lib: flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\core_implementations.cc.obj
flutter\flutter_wrapper_plugin.lib: flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\standard_codec.cc.obj
flutter\flutter_wrapper_plugin.lib: flutter\CMakeFiles\flutter_wrapper_plugin.dir\ephemeral\cpp_client_wrapper\plugin_registrar.cc.obj
flutter\flutter_wrapper_plugin.lib: flutter\CMakeFiles\flutter_wrapper_plugin.dir\build.make
flutter\flutter_wrapper_plugin.lib: flutter\CMakeFiles\flutter_wrapper_plugin.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library flutter_wrapper_plugin.lib"
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	$(CMAKE_COMMAND) -P CMakeFiles\flutter_wrapper_plugin.dir\cmake_clean_target.cmake
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	C:\PROGRA~2\MICROS~4\2019\PROFES~1\VC\Tools\MSVC\1429~1.301\bin\Hostx64\x64\lib.exe /nologo /machine:x64 /out:flutter_wrapper_plugin.lib @CMakeFiles\flutter_wrapper_plugin.dir\objects1.rsp 
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug

# Rule to build all files generated by this target.
flutter\CMakeFiles\flutter_wrapper_plugin.dir\build: flutter\flutter_wrapper_plugin.lib
.PHONY : flutter\CMakeFiles\flutter_wrapper_plugin.dir\build

flutter\CMakeFiles\flutter_wrapper_plugin.dir\clean:
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter
	$(CMAKE_COMMAND) -P CMakeFiles\flutter_wrapper_plugin.dir\cmake_clean.cmake
	cd C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug
.PHONY : flutter\CMakeFiles\flutter_wrapper_plugin.dir\clean

flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: flutter\_phony_
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\cpp_client_wrapper\core_implementations.cc
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\cpp_client_wrapper\flutter_engine.cc
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\cpp_client_wrapper\flutter_view_controller.cc
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\cpp_client_wrapper\plugin_registrar.cc
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\cpp_client_wrapper\standard_codec.cc
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\flutter_export.h
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\flutter_messenger.h
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\flutter_plugin_registrar.h
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\flutter_texture_registrar.h
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\flutter_windows.dll
flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend: ..\flutter\ephemeral\flutter_windows.h
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\nim\IdeaProjects\flutter_smarteam\windows C:\Users\nim\IdeaProjects\flutter_smarteam\windows\flutter C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter C:\Users\nim\IdeaProjects\flutter_smarteam\windows\cmake-build-debug\flutter\CMakeFiles\flutter_wrapper_plugin.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : flutter\CMakeFiles\flutter_wrapper_plugin.dir\depend

