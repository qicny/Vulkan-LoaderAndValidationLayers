
#=============================================================================
# Copyright 2007-2009 Kitware, Inc.
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

# support for AT&T syntax assemblers, e.g. GNU as

set(ASM_DIALECT "-ATT-32")
# *.S files are supposed to be preprocessed, so they should not be passed to
# assembler but should be processed by gcc
set(CMAKE_ASM${ASM_DIALECT}_SOURCE_FILE_EXTENSIONS s;asm)

set(CMAKE_ASM${ASM_DIALECT}_COMPILE_OBJECT "<CMAKE_ASM${ASM_DIALECT}_COMPILER> <FLAGS> -o <OBJECT> <SOURCE>")

include(CMakeASMInformation)

set(CMAKE_ASM${ASM_DIALECT}_LINK_FLAGS "-m elf_i386")
set(CMAKE_ASM${ASM_DIALECT}_LINK_EXECUTABLE "<CMAKE_LINKER> <CMAKE_ASM${ASM_DIALECT}_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")
set(ASM_DIALECT)
