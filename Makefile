#
#  Makefile
#  Swift For Arduino (TM)
#
#  Created by Carl Peto on 10/06/2017.
#  Copyright © 2017 Carl Peto. All rights reserved.
#
#  This build script and the AVR and CAVR libraries are private code.
#
#  You may run the build script, unmodified.  You may link the libraries into your products.
#  But you may not incorporate the libraries (whether as is or reverse engineered)
#  into other competing build system type products, open or closed source,
#  free or paid, without the express permission of the author.
#
#  If in any doubt, contact me for advice.  I am friendly and open to reason!
#
#  The same applies for the IDE executable.
#
#  This does not affect most of the additional tools that are bundled in other separate folders from the build script.
#  Those other tools (e.g. gcc, binutils, avrdude) have their own distinct licenses.
#  Also it does not affect avr libc, which has it's own license.  See those folders for details.
#
#  I may choose to open source the build script and libraries at a later date, if it makes sense but it will be my
#  choice and I reserve the right to do so.  I've worked very hard on these and it's my code.  Please be a decent person
#  and don't try to steal it from me!
#

# products bundled with Swift for Arduino and their licenses
# swiftc [MPL]
# experimental llvm, to be switched to customised llvm soon [University of Illinois/NCSA license, *not* GPL]
# bundled gcc libraries (note, this is not linked to the main program so does not make the main program a derived work under GPL) [GPL]
# bundled binutils (the same license applies) [GPL]
# avrdude [GPL]

# note... the terms of these licenses fully allow the use of these compiled binaries packaged within a closed source, commercial product
# they do not compel me to release the source code of the IDE, the source code of my library or even details of the makefiles I use to
# build projects with all these tools, if I make any patch or contribution to GCC, avr-libc or avrdude, I will, of course, publish full details
# in line with the agreed and legally binding licenses.





# *** DEFINITIONS AND VARIABLES ***
# (The primary ones, there are many other options.)
# define SCRIPTDIR as the top directory for the tools
# define OTHER_SWIFT_FILE to include library files
# define DEBUGMAKE=true or false to enable/disable debug on make actions
# define ADDITIONAL_C_FILES, ADDITIONAL_CPP_FILES and ADDITIONAL_ASM_FILES to include other C or C++ or assembly files to be built.

# expansion points created by IDE (mostly used in folder projects/command line... usually passed in environment for bundle projects)
SETTINGS_FOLDER = .project
-include $(SETTINGS_FOLDER)/paths.include
-include $(SETTINGS_FOLDER)/board.include
-include $(SETTINGS_FOLDER)/settings.include

# this expansion point is dynamically created from the project manifest on both folder and bundle projects
# marked as non optional because the build depends on it now, and it should always create
include $(SETTINGS_FOLDER)/project.include

######
# Architecture specific
######

ifeq ($(ARCH),)
$(error "must define an architecture")
endif

ifeq ($(SCRIPTDIR),)
$(error "SCRIPTDIR must point to the build engine tool root")
endif

ifneq ($(BUILD_DIR),)
FULL_BUILD_PATH=$(BUILD_DIR)/
else
FULL_BUILD_PATH=build/
endif

ifeq ($(ARCH),AVR)
ARCH_INCLUDES ?= -I "$(AVR_LIBGCC_INCLUDE_DIR)" -I "$(AVR_LIBC_INCLUDE_DIR)"
ARCH_MODULE_DOC_INCLUDES ?= -I="$(AVR_LIBGCC_INCLUDE_DIR)" -I="$(AVR_LIBC_INCLUDE_DIR)"
ARCH_CLANG_INCLUDES ?= -isystem "$(AVR_LIBGCC_INCLUDE_DIR)" -isystem "$(AVR_LIBC_INCLUDE_DIR)"
ARCH_TARGET ?= avr-atmel-linux-gnueabihf
ARCH_GNU_TOOLS_BIN_DIR ?= $(ATMEL_GNU_AVR_TOOLCHAIN_BIN)
ARCH_TOOL_PREFIX ?= avr-
ARCH_LD_SCRIPTS_DIR ?= $(AVR_LD_SCRIPTS_DIR)
ARCH_LD_SCRIPT ?= $(AVR_LD_SCRIPT)
ARCH_LINK_LIBRARIES = -L"$(AVR_LIBC_DIR)" -L"$(AVR_LIBGCC_DIR)"
ARCH_LD_OPTS = $(AVR_LD_OPTS)
ARCH_LD_END = $(AVR_LD_END)
ARCH_GCC_OPTS = $(AVR_GCC_OPTS)
ARCH_CLANG_OPTS = $(AVR_CLANG_OPTS)
ARCH_DEFINES = $(AVR_DEFINES)
ARCH_SWIFT_ONLY_DEFINES = $(AVR_SWIFT_ONLY_DEFINES)
ARCH_LLC_OPTS = -march=avr -mcpu=$(LLC_MCU)
LINK_TOOLS_DIR ?= $(SCRIPTDIR)/gpl-tools-avr/bin
ARCH_INT_BIT_WIDTH = 16
ARCH_UPLOAD_FILE_FORMAT = HEX
endif

ifeq ($(ARCH),ARM)
ARCH_INCLUDES ?= -I "$(ARM_ATSAMD21A_DFP_INCLUDE_DIR)"\
 -I "$(ATMEL_GNU_ARM_LIBC_INCLUDE_DIR)" -I "$(ATMEL_GNU_ARM_LIBGCC_INCLUDE_DIR)" -I ARM
ARCH_MODULE_DOC_INCLUDES ?= -I="$(ARM_ATSAMD21A_DFP_INCLUDE_DIR)"\
 -I="$(ATMEL_GNU_ARM_LIBC_INCLUDE_DIR)" -I="$(ATMEL_GNU_ARM_LIBGCC_INCLUDE_DIR)" -I=ARM
ARCH_CLANG_INCLUDES ?= -isystem "$(ARM_ATSAMD21A_DFP_INCLUDE_DIR)"\
 -isystem "$(ATMEL_GNU_ARM_LIBC_INCLUDE_DIR)" -isystem "$(ATMEL_GNU_ARM_LIBGCC_INCLUDE_DIR)" -I ARM
ARCH_TARGET ?= arm-none-linux-gnueabihf
ARCH_GNU_TOOLS_BIN_DIR ?= $(ATMEL_GNU_ARM_TOOLCHAIN_BIN)
ARCH_TOOL_PREFIX ?= arm-none-eabi-
ARCH_LD_SCRIPTS_DIR ?= $(ARM_LD_SCRIPTS_DIR)
ARCH_LD_SCRIPT ?= $(ARM_LD_SCRIPT)
ARCH_LINK_LIBRARIES = $(ARM_RUNTIME_OBJECTS) -LARM
ARCH_LD_OPTS = $(ARM_LD_OPTS)
ARCH_LD_END = $(ARM_LD_END)
ARCH_GCC_OPTS = $(ARM_GCC_OPTS)
ARCH_CLANG_OPTS = $(ARM_CLANG_OPTS)
ARCH_DEFINES = $(ARM_DEFINES)
ARCH_SWIFT_ONLY_DEFINES = $(ARM_SWIFT_ONLY_DEFINES)
LD_BIN = $(GCC)
ARCH_RUNTIME_DEPS = $(ARM_RUNTIME_OBJECTS)
ARCH_LLC_OPTS = -march=arm -mcpu=cortex-m0plus -mattr=+thumb-mode -float-abi=soft
LINK_TOOLS_DIR ?= $(ARCH_GNU_TOOLS_BIN_DIR)
ARCH_INT_BIT_WIDTH = 32
ARCH_UPLOAD_FILE_FORMAT = BIN
endif



#####
# AVR
#####

AVR_LIBC_SUBDIR ?= avr-libc/lib/$(CORE)
AVR_LIBC_INCLUDE_SUBDIR ?= avr-libc/include
AVR_LIBGCC_SUBDIR ?= avr-libgcc/$(CORE)
AVR_LIBGCC_INCLUDE_SUBDIR ?= avr-libgcc/include
AVR_LD_SCRIPTS_SUBDIR ?= avr-binutils/avr/lib/ldscripts

AVR_LIBC_DIR ?= $(AVR_LINK_LIBRARIES_DIR)/$(AVR_LIBC_SUBDIR)
AVR_LIBC_INCLUDE_DIR ?= $(AVR_LINK_LIBRARIES_DIR)/$(AVR_LIBC_INCLUDE_SUBDIR)
AVR_LIBGCC_DIR ?= $(AVR_LINK_LIBRARIES_DIR)/$(AVR_LIBGCC_SUBDIR)
AVR_LIBGCC_INCLUDE_DIR ?= $(AVR_LINK_LIBRARIES_DIR)/$(AVR_LIBGCC_INCLUDE_SUBDIR)

AVR_LD_SCRIPTS_DIR ?= $(AVR_LINK_LIBRARIES_DIR)/$(AVR_LD_SCRIPTS_SUBDIR)
AVR_LD_SCRIPT ?= $(CORE).xn

AVR_LINK_LIBRARIES_DIR ?= $(SCRIPTDIR)/gpl-tools-avr/lib

SIMAVR=$(SCRIPTDIR)/gpl-tools-avr/bin/simavr

AVR_CLANG_OPTS = -march=$(CORE)
AVR_LD_OPTS = --static -Tdata 0x800100 --gc-sections "$(AVR_LIBC_DIR)/crt$(MCU).o"\
 -z dead-reloc-in-nonalloc='.debug_*=0xffffffff'\
 -z dead-reloc-in-nonalloc='.debug_loc=0xfffffffe'\
 -z dead-reloc-in-nonalloc='.debug_ranges=0xfffffffe'\
 --undefined=_mmcu\
 --section-start=.mmcu=0x910000
AVR_LD_END ?= --start-group -lgcc -lm -lc -l$(MCU) --end-group
AVR_DEFINES = -DAVR_LIBC_DEFINED -DLIBC_DEFINED -D$(MCUMACRO) -DF_CPU=$(CPU_FREQUENCY)
AVR_SWIFT_ONLY_DEFINES = -DAVR_LIBC_DEFINED_SWIFT

#default to Arduino UNO (Atmega 328P)
MCU ?= atmega328p
CORE ?= avr5

# yml adds quotes around special values, 1, yes, true
# so we strip them to read if "yes" was intended
# note: the single, unpaired quote will probably look strange due to incorrect
# syntax highlighting in many editors, but make reads it perfectly fine
ifeq ($(subst ',,$(INCLUDE_PRINTF_FLT)),yes)

# linker voodoo:
# https://www.avrfreaks.net/forum/compilation-options-and-vfprintf
# http://www.nongnu.org/avr-libc/user-manual/group__avr__stdio.html#gaa3b98c0d17b35642c0f3e4649092b9f1
# https://savannah.nongnu.org/bugs/?50811
# https://stackoverflow.com/questions/26339573/problems-with-printf-on-avr-in-c-with-floating-point
# this adds significant bloat to any program that doesn't need to print things to the UART
# and in fact adds some bloat to programs that don't need to print floating point numbers
# but it's the only way to make sure that you can print floating point numbers if you want to
# due to tedious linker issues
# Basically when you print a floating point number, the AVR library uses snprintf to format it
# for output to the UART. The bottom level of the printf family of functions is vfprintf and that
# comes in three forms (!) The standard one in libc allows you to print strings and ints but not
# floating point numbers, an even more minimal one than that if you really only want the basics
# (linked using -lprintf_min) and a version that includes floating point printing (linked using -lprintf_flt).
# The above is also needed to make it work for boring reasons... AVR uses snprintf, which uses
# vfprintf internally but at that point links the one in libc. If you force the vfprintf symbol to be undefined
# it's always linked even if it's not used and the one from printf_flt is forced into the link at the start so
# the right one is used.

EXTRA_LD_OPTS ?= -u vfprintf -lprintf_flt
else
EXTRA_LD_OPTS ?=
endif

# normally llvm will use the same mcu but in some cases (e.g. atmega4809) support is not there yet
# so we will need to specify an override
LLC_MCU ?= $(MCU)

ifeq ($(PROGRAMMER),)
PROGRAMMER = arduino
BAUD ?= 115200
endif

ifeq ($(PORT),)
AVRDUDE_PORT =
else
AVRDUDE_PORT ?= -P $(PORT) -b $(BAUD)
endif

PROGRAMMER_MCU ?= $(MCU)
AVRDUDE_DIR ?= $(SCRIPTDIR)/avrdude/6.3_1
AVRDUDE_CONF_FILE ?= $(AVRDUDE_DIR)/etc/avrdude.conf
AVRDUDE_OPTS ?= -C "$(AVRDUDE_CONF_FILE)" -c $(PROGRAMMER) -p $(PROGRAMMER_MCU) -V $(AVRDUDE_EXTRA_OPTS)
AVRDUDE ?= "$(LINK_TOOLS_DIR)/avrdude" $(AVRDUDE_OPTS) $(AVRDUDE_PORT)


#####
# ARM
#####
ARM_ATSAMD21A_DFP_INCLUDE_DIR = $(ARM_ATSAMD21A_DFP_DIR)/include
ARM_LD_SCRIPTS_DIR = $(ARM_ATSAMD21A_DFP_GCC_DIR)/gcc
ARM_ATSAMD21A_DFP_GCC_DIR = $(ARM_ATSAMD21A_DFP_DIR)/gcc
ARM_ATSAMD21A_DFP_DIR = $(SCRIPTDIR)/ATSAMD21-DFP/samd21a

ATMEL_GNU_ARM_LIBC_INCLUDE_DIR = $(ATMEL_GNU_ARM_LIBC_DIR)/include
ATMEL_GNU_ARM_LIBC_DIR = $(ATMEL_GNU_ARM_DIR)/arm-none-eabi

ATMEL_GNU_ARM_LIBGCC_INCLUDE_DIR = $(ATMEL_GNU_ARM_LIBGCC_DIR)/include
ATMEL_GNU_ARM_LIBGCC_DIR = $(ATMEL_GNU_ARM_DIR)/lib/gcc/arm-none-eabi/6.3.1

ATMEL_GNU_ARM_TOOLCHAIN_BIN = $(ATMEL_GNU_ARM_DIR)/bin

ATMEL_GNU_ARM_DIR = $(SCRIPTDIR)/gpl-tools-arm

ARM_LD_SCRIPT = samd21g18a_flash.ld
ARM_LD_OPTS = --static --gc-sections --section-start=.text=0x2000
ARM_LD_END =
ARM_DEVICE_MACRO = __SAMD21G18A__
ARM_DEFINES = -D$(ARM_DEVICE_MACRO) -DLIBC_DEFINED
ARM_GCC_OPTS = -mcpu=cortex-m0plus -mthumb -Os -nostdlib

ARM_RUNTIME_OBJECTS = $(ARM_RUNTIME_DIR)/startup_samd21g18a.o $(ARM_RUNTIME_DIR)/system_samd21g18a.o
ARM_RUNTIME_DIR = "$(SCRIPTDIR)"/arm-runtime

ifeq ($(PORT),)
BOSSAC_PORT =
else
BOSSAC_PORT = $(shell echo $(PORT)|sed -nEe 's/\/dev\///p')
endif

BOSSAC = "$(SCRIPTDIR)"/bossac/bossac

BOSSAC_OPTS = --port=$(BOSSAC_PORT) $(BOSSAC_EXTRA_OPTS) -U=1 -i -d -a -e -w -v -R


########
# Shared
########


DEBUG_MAKE ?= yes
MAIN_SWIFT_FILE ?= main.swift
MAIN_SWIFT_BITCODE_FILE ?= $(FULL_BUILD_PATH)$(MAIN_SWIFT_FILE:.swift=.bc)

SWIFTC_DIR ?= $(SCRIPTDIR)/swift

IV = $(IV1) $(IV2) $(IV3) $(EMP)
uSWIFT_RUNTIME_DIR ?= $(SCRIPTDIR)/uSwift-$(ARCH)
SWIFT_SHIMS_DIR ?= $(SCRIPTDIR)/uSwiftShims
# some day libSwiftExperimentalRuntime should be folded into libSwift
LINK_LIBRARIES := $(ADDED_CORE_LINK) -L "$(uSWIFT_RUNTIME_DIR)" -lSwift -lSwiftExperimentalRuntime
SWIFT_INCLUDE_DIRS := $(ADDED_CORE_INCLUDE)

#llvm
REMOVE_LLVM_LINKER_METADATA ?= yes

#gnu avr binutils/gcc
LLVM_TOOLS_DIR ?= $(SCRIPTDIR)/llvm
SED ?= sed

BUILD_LOG ?= $(FULL_BUILD_PATH)build_log.txt
ERROR_LOG ?= $(FULL_BUILD_PATH)error_log.txt
ERROR_STATUSES ?= abort|error

ifeq ($(CREATE_DIAGNOSTICS),yes)
DIAG_LD ?= --Map=$(FULL_BUILD_PATH)main.map
else
DIAG_LD ?=
endif

LD_TOOL ?= "$(LLVM_TOOLS_DIR)/ld.lld"
LD = $(LD_TOOL) $(MODULE_LINK_DIRECTORIES) $(ARCH_LINK_LIBRARIES) $(ARCH_LD_OPTS) $(EXTRA_LD_OPTS) $(DIAG_LD)\
 -L"$(ARCH_LD_SCRIPTS_DIR)" -T$(ARCH_LD_SCRIPT)

LD_END ?= --start-group -lgcc -lm -lc -l$(MCU) --end-group

# llc always does full optimisation, we don't have -O0 for debug
LLC_OPTS ?= -O3 $(ARCH_LLC_OPTS) -filetype=obj -data-sections -function-sections

LLC ?= $(LLVM_TOOLS_DIR)/llc
LLVM-DIS ?= $(LLVM_TOOLS_DIR)/llvm-dis

OBJCOPY ?= "$(LINK_TOOLS_DIR)/$(ARCH_TOOL_PREFIX)objcopy"
OBJDUMP ?= "$(LINK_TOOLS_DIR)/$(ARCH_TOOL_PREFIX)objdump"

IL_TO_OBJ ?= "$(LLC)" $(LLC_OPTS)


AVRSIZE ?= "$(LINK_TOOLS_DIR)/$(ARCH_TOOL_PREFIX)size"
AR = "$(LINK_TOOLS_DIR)/$(ARCH_TOOL_PREFIX)ar" rcs
OUTPUT_MAP_FILE ?= $(FULL_BUILD_PATH)outputMap.json
SWIFT_EXT ?= swift

#swift
ifneq ($(ARCH_DEFINES),)
SWIFTC_ARCH_DEFINES = $(patsubst %,-Xcc %,$(ARCH_DEFINES))
SWIFT_MAKE_MODULE_DOC_ARCH_DEFINES = $(patsubst %,-Xcc=%,$(ARCH_DEFINES))
endif

SWIFTC_OPTS := -no-link-objc-runtime -Xfrontend -disable-reflection-metadata\
 -nostdimport -I "$(uSWIFT_RUNTIME_DIR)" -I "$(SWIFT_SHIMS_DIR)"\
 $(SWIFT_INCLUDE_DIRS) $(ARCH_INCLUDES)\
 $(MODULE_INCLUDE_DIRECTORIES) $(SWIFTC_ARCH_DEFINES) $(ARCH_SWIFT_ONLY_DEFINES)

# use main.h as the bridging header if present
ifneq (,$(wildcard ./main.h))
C_HEADER ?= main.h
endif

ifneq ($(C_HEADER),)
SWIFTC_OPTS := $(SWIFTC_OPTS) -import-objc-header $(C_HEADER)
endif

# by default optimise for speed, not size, because we need predictable speed
# and things like virtual calls, passing metadata to unspecialised generics, etc.
# are way too bulky and slow, so ironically we could end up with slower, bigger programs
ifeq ($(subst ',,$(COMPRESS_SIZE_OPTIMISATIONS)),yes)
SWIFTC_OPTS := -Osize $(SWIFTC_OPTS)
else
SWIFTC_OPTS := -O $(SWIFTC_OPTS)
endif

ifeq ($(DEBUG_TRAPS),yes)
SWIFTC_OPTS := -g $(SWIFTC_OPTS)
endif

# injection point (for defines, etc.)
SWIFTC_OPTS := $(SWIFTC_OPTS) $(SWIFTC_EXTRA_OPTS)

TARGET_OPTS ?= -target $(ARCH_TARGET)

MODULEMAP ?= $(wildcard ./module.modulemap)

ifeq ($(FIND_MODULE_MAP),yes)
SWIFT_MAKE_MODULE_EXTRA_OPTS ?= -parse-as-library -import-underlying-module -I .
endif

# use for example SWIFT_OPT_LEVEL=size

SWIFT_DEBUG_OPTIONS= -g
SWIFT_OPTIMISATION= -O$(SWIFT_OPT_LEVEL)
SWIFT_MEMORY_EXCLUSIVITY = -enforce-exclusivity=unchecked
SWIFT_GENERAL_OPTS = $(SWIFT_DEBUG_OPTIONS) $(SWIFT_OPTIMISATION) $(SWIFT_MEMORY_EXCLUSIVITY) $(SWIFT_RUNTIME_SCANNER)

SWIFT_TO_BC_OPTS ?= -emit-bc $(SWIFT_GENERAL_OPTS) $(SWIFT_MAKE_MODULE_EXTRA_OPTS)
SWIFT_TO_SIL_OPTS ?= -emit-silgen $(SWIFT_GENERAL_OPTS)
SWIFT_TO_CSIL_OPTS ?= -emit-sil $(SWIFT_GENERAL_OPTS)

SWIFT_MAKE_MODULE_OPTS ?= $(SWIFT_GENERAL_OPTS) -parse-as-library -emit-module $(SWIFT_MAKE_MODULE_EXTRA_OPTS) -I $(BUILD_MODULE_NAMED)

SWIFT_MAKE_MODULE_DOC_OPTS ?= -print-module -source-filename=dummy.swift \
-I="$(uSWIFT_RUNTIME_DIR)" -I="$(SWIFT_SHIMS_DIR)" $(ARCH_MODULE_DOC_INCLUDES)\
 $(MODULE_MAKE_DOCS_INCLUDE_DIRECTORIES) $(SWIFT_MAKE_MODULE_DOC_ARCH_DEFINES)

C_TO_IL_OPTS ?= -S -emit-llvm

CLANG_INCLUDE_DIRS ?= $(ARCH_CLANG_INCLUDES) $(ARDUINO_LIB_CLANG_OPTIONS)
CLANG_OPTS ?= -fmodules -std=c99 -O3 $(CLANG_INCLUDE_DIRS) $(ARCH_DEFINES) $(TARGET_OPTS) $(ARCH_CLANG_OPTS) $(MODULE_INCLUDE_DIRECTORIES)
CLANG_PP_OPTS ?= -fmodules -fcxx-modules -std=c++11 -fno-rtti -O3 $(CLANG_INCLUDE_DIRS) $(ARCH_DEFINES) $(TARGET_OPTS) \
$(ARCH_CLANG_OPTS) $(MODULE_INCLUDE_DIRECTORIES) $(CPP_EXTRA_IMPORTS) $(CPP_EXTRA_DEFINES)

SWIFTC ?= $(SWIFTC_DIR)/swiftc
CLANG ?= "$(LLVM_TOOLS_DIR)/clang" $(CLANG_OPTS)
CLANG_PP ?= "$(LLVM_TOOLS_DIR)/clang++" $(CLANG_PP_OPTS)
SWIFT_IDE_TOOL ?= $(SWIFTC_DIR)/swift-ide-test

SWIFT_TO_BC ?= "$(SWIFTC)" $(TARGET_OPTS) $(SWIFT_TO_BC_OPTS) $(SWIFTC_OPTS)
SWIFT_TO_SIL ?= "$(SWIFTC)" $(TARGET_OPTS) $(SWIFT_TO_SIL_OPTS) $(SWIFTC_OPTS)
SWIFT_TO_CSIL ?= "$(SWIFTC)" $(TARGET_OPTS) $(SWIFT_TO_CSIL_OPTS) $(SWIFTC_OPTS)
SWIFT_MAKE_MODULE ?= "$(SWIFTC)" $(TARGET_OPTS) $(SWIFT_MAKE_MODULE_OPTS) $(SWIFTC_OPTS)

SWIFT_MAKE_MODULE_DOC ?= "$(SWIFT_IDE_TOOL)" $(TARGET_OPTS) $(SWIFT_MAKE_MODULE_DOC_OPTS)

C_TO_IL ?= "$(CLANG)" $(TARGET_OPTS) $(C_TO_IL_OPTS)

#https://modocache.io/reading-and-understanding-the-swift-driver-source-code

ifneq ($AVRDUDE_ONLY_ACTION,yes)
OTHER_SWIFT_FILE=$(OTHER_SWIFT_FILES)
endif


# *** MAIN PHONEY TARGETS ***
.PHONY : all clean_buildlog upload clean diagnostics
.PHONY : abort_check abort_analyze runtime_absence_check build_main_executable simulate simulate-gdb simulate-test.log
.PHONY : AVR_HW_LIB ARM_HW_LIB
.INTERMEDIATE : $(AUTOLINK_FILE)

# find the module to build if appropriate
ifeq ($(FIND_MODULE_MAP),yes)
# read the module name from the modulemap file
# try to run this command only once, use simple rather than recursive variable
BUILD_MODULE_NAMED := $(shell sed -nEe '/^module /s/^module (.*) .*$$/\1/p' module.modulemap)
# modules must not have a main.swift, it is a compile error
MAIN_SWIFT_FILE =
endif

# main targets
OBJ_FILE=$(FULL_BUILD_PATH)$(MAIN_SWIFT_FILE:.swift=.o)
MAIN_MODULE_NAME=$(MAIN_SWIFT_FILE:.swift=)
ELF_FILE=$(FULL_BUILD_PATH)$(MAIN_SWIFT_FILE:.swift=.elf)
ELF_LINKER_OUTPUT_FILE=$(ELF_FILE:.elf=.elf.linkerOutput.txt)
ASM_ELF_FILE=$(ELF_FILE:.elf=.elf.s)
HEX_FILE=$(ELF_FILE:.elf=.hex)
BIN_FILE=$(ELF_FILE:.elf=.bin)
AUTOLINK_FILE = $(FULL_BUILD_PATH)autolink.txt

ALL_SWIFT_FILES = $(MAIN_SWIFT_FILE) $(OTHER_SWIFT_FILE)
ALL_SWIFT_FILES_ND = $(notdir $(ALL_SWIFT_FILES))
ALL_SWIFT_INTERMEDIATES = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_SWIFT_FILES_ND:.swift=.bc))
ALL_SWIFT_SIL = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_SWIFT_FILES_ND:.swift=.sil))
ALL_SWIFT_CSIL = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_SWIFT_FILES_ND:.swift=.csil))
ALL_SWIFT_OBJECTS = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_SWIFT_FILES_ND:.swift=.o))
ALL_SWIFT_LLVM_TXT_FILES = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_SWIFT_FILES_ND:.swift=.ll))

# C, C++, S
ALL_C_FILES = $(ADDITIONAL_C_FILES)
ALL_C_FILES_ND = $(notdir $(ALL_C_FILES))
ALL_C_INTERMEDIATES = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_C_FILES_ND:.c=.c.bc))
ALL_C_OBJECTS = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_C_FILES_ND:.c=.c.o))

ALL_CPP_FILES = $(ADDITIONAL_CPP_FILES)
ALL_CPP_FILES_ND = $(notdir $(ALL_CPP_FILES))
ALL_CPP_INTERMEDIATES = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_CPP_FILES_ND:.cpp=.cpp.bc))
ALL_CPP_OBJECTS = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_CPP_FILES_ND:.cpp=.cpp.o))

ALL_CLANG_DEPENDENCIES = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_C_FILES_ND:.c=.c.d)) $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_CPP_FILES_ND:.cpp=.cpp.d))

ALL_ASM_FILES = $(ADDITIONAL_ASM_FILES) # .s
ALL_ASM_FILES_ND = $(notdir $(ALL_ASM_FILES))
ALL_ASM_OBJECTS = $(patsubst %,$(FULL_BUILD_PATH)%,$(ALL_ASM_FILES_ND:.s=.o))

#ADDITIONAL_OBJECTS ?= $(ADDITIONAL_C_FILES:%.c=$(FULL_BUILD_PATH)%.c.o) $(ADDITIONAL_CPP_FILES:%.cpp=$(FULL_BUILD_PATH)%.cpp.o)


ALL_TARGETS := clean_buildlog $(ELF_FILE) $(ERROR_LOG) runtime_absence_check abort_check

ifeq ($(CREATE_DIAGNOSTICS),yes)
ALL_TARGETS := $(ALL_TARGETS) $(ASM_ELF_FILE) $(ALL_SWIFT_LLVM_TXT_FILES)
endif

ifeq ($(DEBUG_TRAPS),yes)
ALL_TARGETS := $(ALL_TARGETS) abort_analyze
endif

ifeq ($(BUILD_MODULE_NAMED),)
# if we are NOT building a module, then we will want a HEX for upload, and diagnostics
ALL_TARGETS := $(ALL_TARGETS) $(HEX_FILE) diagnostics sizeReport flashSizeCheck ramSizeReport
MODULE_NAME = $(MAIN_MODULE_NAME)
else
# we assume EXPORT_MODULE_PATH must be set, or it is an error
.PHONY: $(EXPORT_MODULE_PATH)
ifneq ($(EXPORT_MODULE_PATH),)
ALL_TARGETS := clean_buildlog $(EXPORT_MODULE_PATH)
else
# unexpected fallback, for a build with no export directory, just build the module binaries
ALL_TARGETS := $(MODULE_OUTPUT_FILES) $(FULL_BUILD_PATH)lib$(MODULE_NAME).a
endif
# modules do not use main.swift, it is a compilation error
MAIN_SWIFT_FILE =
MODULE_NAME = $(BUILD_MODULE_NAMED)
endif


# note this kills exit code so use set -o pipefail
APPEND_BUILD_LOG ?= 2>&1|tee -a $(BUILD_LOG)

# inject overrides for Extension builds if required
# note, this will not be able to override everything at the moment

BUILD_MAKEFILE_INJECT_FILENAME = $(shell basename '$(BUILD_MAKEFILE_INJECT)')
UPLOAD_MAKEFILE_INJECT_FILENAME = $(shell basename '$(UPLOAD_MAKEFILE_INJECT)')

$(BUILD_MAKEFILE_INJECT_FILENAME): "$(BUILD_MAKEFILE_INJECT)"
	cp "$<" ./$@

$(UPLOAD_MAKEFILE_INJECT_FILENAME): "$(UPLOAD_MAKEFILE_INJECT)"
	cp "$<" ./$@

ifneq ($(BUILD_MAKEFILE_INJECT),)
$(info *** Importing additional deps from $(BUILD_MAKEFILE_INJECT_FILENAME) ***)
include $(BUILD_MAKEFILE_INJECT_FILENAME)
endif

ifneq ($(UPLOAD_MAKEFILE_INJECT),)
$(info *** Importing additional deps from $(UPLOAD_MAKEFILE_INJECT_FILENAME) ***)
include $(UPLOAD_MAKEFILE_INJECT_FILENAME)
endif

# runtime stubbing:
ifneq ($(SUPPRESS_MISSING_RUNTIME_STUB),yes)
ifeq ($(UNIT_TESTING_STUBS),yes)
MISSING_RUNTIME_STUB ?= "$(uSWIFT_RUNTIME_DIR)/missing_runtime_unit_testing.o"
else
ifeq ($(MISSING_RUNTIME_SHOW_WARNING),yes)
MISSING_RUNTIME_STUB ?= "$(uSWIFT_RUNTIME_DIR)/missing_runtime_show_warning.o"
else
MISSING_RUNTIME_STUB ?= "$(uSWIFT_RUNTIME_DIR)/missing_runtime_stub.o"
endif
endif
endif

ifneq ($(BUILD_MAKEFILE_INJECT),)
ELF_BUILD_STATUS = "Linking ELF file using makefile include ${BUILD_MAKEFILE_INJECT}"
else
ELF_BUILD_STATUS = "Linking ELF file"
endif

ifneq ($(FLASH_SIZE),)
TEXT_SECTION_SIZE=--defsym=__TEXT_REGION_LENGTH__=$(FLASH_SIZE)
endif

ifneq ($(RAM_SIZE),)
DATA_SECTION_SIZE=--defsym=__DATA_REGION_LENGTH__=$(RAM_SIZE)
endif

all:  $(FULL_BUILD_PATH) $(ALL_TARGETS)
scan_errors: $(ERROR_LOG)
.PHONY: scan_errors $(ERROR_LOG) # always recreate error log from latest build

$(SETTINGS_FOLDER):
	mkdir -p $@


#project file define
PROJECT_FILES = $(shell ls *.swift4p|tr ' ' '?')
# note, we use this weird form instead of $(wildcard *.swift4p) in order to handle spaces in filenames
$(SETTINGS_FOLDER)/project.include: $(SETTINGS_FOLDER) $(PROJECT_FILES)
	cat /dev/null > $@
	[ -n "$(PROJECT_FILES)" ] && "$(SCRIPTDIR)/read_project.awk" $(PROJECT_FILES) >> $@

ifeq ($(ARCH_UPLOAD_FILE_FORMAT),HEX)
upload: upload-$(notdir $(HEX_FILE))
else ifeq ($(ARCH_UPLOAD_FILE_FORMAT),BIN)
upload: upload-$(notdir $(BIN_FILE))
endif

clean:
	-rm -f *.o *.elf *.hex *.ll *.s *.S *.sil *.bc *.d *.map *.autolink.txt autolink.txt build_log.txt *.swiftmodule \
	*.swiftdoc *.swiftsourceinfo *.swiftinterface lib*.a $(OUTPUT_MAP_FILE)
	-rm -rf $(FULL_BUILD_PATH) 2> /dev/null
	echo "Cleaned Files"

clean_buildlog:
	cat /dev/null > $(BUILD_LOG)

ifneq ($(FULL_BUILD_PATH),)
$(FULL_BUILD_PATH):
	mkdir -p $(FULL_BUILD_PATH)
endif

$(OUTPUT_MAP_FILE): $(ALL_SWIFT_FILES) $(FULL_BUILD_PATH)
	(echo "{";for i in $(ALL_SWIFT_FILES);do j=$$(basename $$i);echo "\"$$i\":{\"llvm-ir\":\"$(FULL_BUILD_PATH)$${j/%.swift/.ll}\",\"llvm-bc\":\"$(FULL_BUILD_PATH)$${j/%.swift/.bc}\",\"raw-sil\":\"$(FULL_BUILD_PATH)$${j/%.swift/.sil}\",\"sil\":\"$(FULL_BUILD_PATH)$${j/%.swift/.csil}\"},";done;echo "}") > $@

# *** SWIFT INTERMEDIATES RULES ***

$(ALL_SWIFT_INTERMEDIATES) : $(ALL_SWIFT_FILES) $(ELF_DEPS) $(OUTPUT_MAP_FILE)
	set -o pipefail && $(SWIFT_TO_BC) -module-name $(MODULE_NAME) -whole-module-optimization \
	 -num-threads 4 -output-file-map $(OUTPUT_MAP_FILE) $(ALL_SWIFT_FILES) $(APPEND_BUILD_LOG)
	@echo Emitted $(ALL_SWIFT_INTERMEDIATES)

# why do we run swift twice?
# once to produce the bitcode that's used in the build and once to produce a textual llvm IR version of the
# same bitcode for debugging purposes, in the second case it makes no sense to verify runtime calls again

# also note: casually this rule looks wrong, all objects depending on all swift files but that is correct, the swift files
# are in the same module, so the same namespace, so they can read each other's AST/namespace and a change to one needs all to
# be recompiled. This is especially true as we have WMO enabled, so new inlining opportunitie/generic specialisations etc might now exist.
# If this scales badly, we can start introducing -incremental builds and suitable dep files for iterative development, however this would
# probably not match microcontroller development well, it would probably need -Onone builds that could be gigantic and far slower than real
# builds... it's difficult to see them being useful for debugging as their behaviour would be so very different in many cases that debug
# would be meaningless.
# Practically speaking this means that any change to any swift source file in the module will recompile all modules to bitcode and all bc
# files to object files, meaning make doesn't really do meaningful dependency/age analysis with swift files.
$(ALL_SWIFT_SIL) : $(ALL_SWIFT_FILES) $(ELF_DEPS) $(OUTPUT_MAP_FILE)
	set -o pipefail && $(SWIFT_TO_SIL) -module-name $(MODULE_NAME) -whole-module-optimization \
	-num-threads 4 -output-file-map $(OUTPUT_MAP_FILE) $(ALL_SWIFT_FILES) $(APPEND_BUILD_LOG)
	@echo Emitted $(ALL_SWIFT_SIL)

$(ALL_SWIFT_CSIL) : $(ALL_SWIFT_FILES) $(ELF_DEPS) $(OUTPUT_MAP_FILE)
	set -o pipefail && $(SWIFT_TO_CSIL) -module-name $(MODULE_NAME) -whole-module-optimization \
	-num-threads 4 -output-file-map $(OUTPUT_MAP_FILE) $(ALL_SWIFT_FILES) $(APPEND_BUILD_LOG)
	@echo Emitted $(ALL_SWIFT_CSIL)


# *** CLANG (C++, C) INTERMEDIATES RULES ***

# I can't work out a way to make the stemming work on targets, as the source directories vary.
# In a way, we're covering an issue, which is we are mapping from source files in potentially unlimited directories
# into output files in just the build directory. If the user had A.swift in multiple places this *will* break the build,
# and the same for other source files, .c, .cpp. A more accurate build would map A.swift to build/A.bc and DIR/A.swift to
# build/DIR/A.bc, but we are avoiding that complication for now, so we are hacking the build targeting instead.
$(ALL_CPP_INTERMEDIATES) : $(ALL_CPP_FILES)
	$(CLANG_PP) -emit-llvm -MMD -MF$(patsubst %,$(FULL_BUILD_PATH)%,$(notdir $(<:%.cpp=%.cpp.d))) -c $(EXTRA_CPP_PARAMS) -o $(patsubst %,$(FULL_BUILD_PATH)%,$(notdir $(<:%.cpp=%.cpp.bc))) $<
	echo "Emitted $(notdir $(<:%.cpp=%.cpp.bc))"

$(ALL_C_INTERMEDIATES) : $(ALL_C_FILES)
	$(CLANG) -emit-llvm -MMD -MF$(patsubst %,$(FULL_BUILD_PATH)%,$(notdir $(<:%.c=%.c.d))) -c $(EXTRA_C_PARAMS) -o $(patsubst %,$(FULL_BUILD_PATH)%,$(notdir $(<:%.c=%.c.bc))) $<
	echo "Emitted $(notdir $(<:%.c=%.c.bc))"


#...and a fairly simple rule for compiling assembly source into build folder .o files

$(ALL_ASM_OBJECTS) : %.o : $.a
	$(CLANG) -c -o $@ $<

ifeq ($(BUILD_MODULE_NAMED),)

# The rule for the "most important" target... the executable
# note, this doesn't apply when building a module
$(ELF_FILE) $(ELF_LINKER_OUTPUT_FILE) : $(FULL_BUILD_PATH) $(ALL_SWIFT_OBJECTS) $(ALL_C_OBJECTS) $(ALL_CPP_OBJECTS) $(ALL_ASM_OBJECTS) $(ELF_DEPS) $(AUTOLINK_FILE)
	@echo $(ELF_BUILD_STATUS)
	$(LD) -o $(ELF_FILE) $(ALL_SWIFT_OBJECTS) $(ALL_C_OBJECTS) $(ALL_CPP_OBJECTS) $(ALL_ASM_OBJECTS) $(TEXT_SECTION_SIZE) $(DATA_SECTION_SIZE) $(MISSING_RUNTIME_STUB) \
	$(shell cat $(AUTOLINK_FILE)) $(LINK_LIBRARIES) $(ARCH_LD_END) 2>&1 > $(ELF_LINKER_OUTPUT_FILE) || (echo "**LINKING FAILED**" && exit -99)
	echo "Linked $(ELF_FILE)"

else
# alternative, when building a library...

MODULE_FILE = $(FULL_BUILD_PATH)$(MODULE_NAME).swiftmodule
MODULE_DOC_FILE = $(FULL_BUILD_PATH)$(MODULE_NAME).swiftdoc
MODULE_SOURCEINFO_FILE = $(FULL_BUILD_PATH)$(MODULE_NAME).swiftsourceinfo

MODULE_OUTPUT_FILES = $(MODULE_FILE) $(MODULE_DOC_FILE) $(MODULE_SOURCEINFO_FILE)
MODULE_OUTPUT_PATHS = -emit-module-path $(MODULE_FILE) -emit-module-source-info-path $(MODULE_SOURCEINFO_FILE)

$(MODULE_OUTPUT_FILES): $(FULL_BUILD_PATH) $(ALL_SWIFT_FILES)
	@echo "** Create $(MODULE_NAME) Swift module"
	set -o pipefail && $(SWIFT_MAKE_MODULE) -module-name $(MODULE_NAME) $(MODULE_OUTPUT_PATHS) -whole-module-optimization $(ALL_SWIFT_FILES) $(APPEND_BUILD_LOG)

$(FULL_BUILD_PATH)lib$(MODULE_NAME).a: $(FULL_BUILD_PATH) $(ALL_SWIFT_OBJECTS) $(ALL_C_OBJECTS) $(ALL_CPP_OBJECTS) $(ALL_ASM_OBJECTS)
	@echo "** Create library $(MODULE_NAME)"
	set -o pipefail && $(AR) -o $@ $(ALL_SWIFT_OBJECTS) $(ALL_C_OBJECTS) $(ALL_CPP_OBJECTS) $(ALL_ASM_OBJECTS) $(APPEND_BUILD_LOG)

ifneq ($(EXPORT_MODULE_PATH),)
$(EXPORT_MODULE_PATH): $(MODULE_OUTPUT_FILES) $(FULL_BUILD_PATH)lib$(MODULE_NAME).a $(wildcard ./module.modulemap) $(wildcard ./*.h)
	-rm -rf "$@" 2> /dev/null
	mkdir -p "$@"
	cp -a $^ "$@"/
endif

endif

$(AUTOLINK_FILE): $(ALL_SWIFT_OBJECTS)
	$(OBJDUMP) -j .swift1_autolink_entries -s $^\
	|grep -E '^ [0-9][0-9][0-9][0-9]'|cut -c 44-|tr -d '\n'|tr -d '[:blank:]'|tr '.' ' ' > $@

# make sure all other pseudo targets are downstream of this
build_main_executable: $(ELF_FILE) $(ELF_LINKER_OUTPUT_FILE)

simulate: $(ELF_FILE)
	"$(SIMAVR)" -m $(MCU) -f $(CPU_FREQUENCY) $<

simulate-gdb: $(ELF_FILE)
	"$(SIMAVR)" -m $(MCU) -f $(CPU_FREQUENCY) -g $<

simulate-test.log: $(ELF_FILE)
	"$(SIMAVR)" -m $(MCU) -f $(CPU_FREQUENCY) $< 2>&1 |tee $@

$(ERROR_LOG):
	-@grep -hE "^.*\.swift:[0-9]+:[0-9]+: ($(ERROR_STATUSES)):" $(BUILD_LOG) $(ELF_LINKER_OUTPUT_FILE) > $@

diagnostics: $(ELF_FILE)
	# echo PERFORMING DIAGNOSTICS
	#see https://mcuoneclipse.com/2013/04/14/text-data-and-bss-code-and-data-size-explained/
	$(AVRSIZE) $<

sil: $(ALL_SWIFT_SIL)
csil: $(ALL_SWIFT_CSIL)

ifeq ($(BUILD_MODULE_NAMED),)

ifeq ($(MCU),atmega328p)
FLASH_SIZE ?= 32768
RAM_SIZE ?= 2048
endif

$(FULL_BUILD_PATH)text-size.txt $(FULL_BUILD_PATH)data-size.txt $(FULL_BUILD_PATH)bss-size.txt $(FULL_BUILD_PATH)globals-size.txt $(FULL_BUILD_PATH)prog-size.txt: $(ELF_FILE)
	@$(AVRSIZE) -d $<|tail -1|cut -f1 > $(FULL_BUILD_PATH)text-size.txt
	@$(AVRSIZE) -d $<|tail -1|cut -f2 > $(FULL_BUILD_PATH)data-size.txt
	@$(AVRSIZE) -d $<|tail -1|cut -f3 > $(FULL_BUILD_PATH)bss-size.txt
	@echo $$(( $$(cat $(FULL_BUILD_PATH)data-size.txt) + $$(cat $(FULL_BUILD_PATH)bss-size.txt) )) > $(FULL_BUILD_PATH)globals-size.txt
	@echo $$(( $$(cat $(FULL_BUILD_PATH)data-size.txt) + $$(cat $(FULL_BUILD_PATH)text-size.txt) )) > $(FULL_BUILD_PATH)prog-size.txt

sizeReport: $(FULL_BUILD_PATH)prog-size.txt $(FULL_BUILD_PATH)globals-size.txt
	@echo "Size of program is $$(( $$(cat $(FULL_BUILD_PATH)prog-size.txt) )) bytes. Size of global memory is $$(( $$(cat $(FULL_BUILD_PATH)globals-size.txt) )) bytes."

ifneq ($(FLASH_SIZE),)
flashSizeCheck: $(FULL_BUILD_PATH)prog-size.txt
	@echo "$$(( $$(cat $(FULL_BUILD_PATH)prog-size.txt) * 100 / $(FLASH_SIZE) ))% (rounded) of flash memory used."
	@if (( $$(cat $(FULL_BUILD_PATH)prog-size.txt) > $(FLASH_SIZE) ));\
	then\
	  echo "*** PROGRAM TOO BIG ***";\
	  echo "This program will not fit on your microcontroller/Arduino.";\
	  exit 28;\
	fi
else
flashSizeCheck:
	@true
endif

ifneq ($(RAM_SIZE),)
ramSizeReport: $(FULL_BUILD_PATH)globals-size.txt
	@echo "$$(( $$(cat $(FULL_BUILD_PATH)globals-size.txt) * 100 / $(RAM_SIZE) ))% (rounded) of RAM used for global variables. Stack and heap will use more on top of that."
else
ramSizeCheck:
	@true
endif

else

sizeCheck:
	@true # size check is redundant on modules

endif

# automated dependencies, only for C/CPP, swift should automatically depend on all swift files in the module (see below)
# note this still misses swift's downward dependencies on a tree of .h files, not sure how to fix that
-include $(ALL_CLANG_DEPENDENCIES)


# *** RECIPIES AND RULES ***

ifeq ($(DEBUGMAKE),true)
.PRECIOUS : %.bc %.ll %.elf %.o %.sil *.bin *.hex
endif

%.ll : %.bc
	"$(LLVM-DIS)" $<

%.o : %.s

%.o : %.S

%.o : %.c

%.sil : %.swift
	$(SWIFT_TO_SIL) -o $@ $<

%.csil : %.swift
	$(SWIFT_TO_CSIL) -o $@ $<

# Generic rule to build the object file from intermediate for swift intermediates other than main
%.o : %.bc
	$(IL_TO_OBJ) -o $@ $(@:.o=.bc)
	echo "Compiled $<"

%.hex : %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@
	echo "Made HEX"

%.bin : %.elf
	$(OBJCOPY) -j .text -j .data -O binary $< $@
	echo "Made BIN"

%.elf.s : %.elf
	$(OBJDUMP) -d -x -z -j .data -j .text $< > $@

%.o.s : %.o
	$(OBJDUMP) -d -x -z $< > $@

$(FULL_BUILD_PATH)%.swiftmodule.txt : $(FULL_BUILD_PATH)
	@echo Building $@
	$(SWIFT_MAKE_MODULE_DOC) -module-to-print=$(@:$(FULL_BUILD_PATH)%.swiftmodule.txt=%) > $@

abort_check: $(ASM_ELF_FILE)
	-grep -q "<abort>" $< && echo $(ABORT_WARNING) || true

abort_analyze: $(MAIN_SWIFT_BITCODE_FILE)
	"$(LLVM-DIS)" $^|\
	sed -nEe '/call void @llvm.trap/s/^.*\!([0-9]+).*/\1/p'|\
	while read i; do grep -e "^\!$${i} =" $<;done|\
	sed -nEe 's/^.*line: ([0-9]+), column: ([0-9]+).*$$/$(MAIN_SWIFT_FILE):\1:\2: abort: Possible abort detected/p'|\
	>> $(BUILD_LOG)

runtime_absence_check: $(ELF_LINKER_OUTPUT_FILE)
	-grep -E -e 'undefined reference to.*_swift_' $< && echo $(RUNTIME_WARNING) || true
	-rm $<

ABORT_WARNING = "\nABORT function found \
in dissassembly!\n\n\
*** WARNING *** you\
have code that can trap an integer overflow and abort, \
crashing the avr program,\n\
e.g. using one type of int in the constructor \
to another where overflow can occur.\n\
Consider changing your maths, \
changing your int types or using &+ to overflow silently without a crash."

RUNTIME_WARNING = "\nUNAVAILABLE RUNTIME use detected.\n\n\
*** WARNING *** you\
seem to be getting linker errors that suggest your program \
is attempting to use runtime functions that are not available,\n\
e.g. using a print() statement without a named parameter \
or trying to use Arrays, Strings, Classes, Structs, Optionals or Enums.\n\n\
These features are not available in the S4A version 1 compiler series.\n\n\
NOTE: If all you are doing is trying to print(), consider changing to a print(message: ...)\
or similar syntax (see documentation).\n\n"



##########
# AVR specific targets and recipes
##########

ifeq ($(REOPEN_PORT_BEFORE_UPLOAD),yes)
reopen-avrdude-port:
	"$(SCRIPTDIR)"/reopen_arduino_port_as_programmer.sh $(PORT)
else
reopen-avrdude-port:
endif

.PHONY: reopen-avrdude-port

ifeq ($(PROGRAMMER),dummy)
upload-%.hex : $(FULL_BUILD_PATH)%.hex
	@echo "*** CANNOT UPLOAD WITH A DUMMY PROGRAMMER! ***"
else
upload-%.hex : $(FULL_BUILD_PATH)%.hex reopen-avrdude-port
	$(AVRDUDE) -U flash:w:$<
	echo "Uploaded HEX"
endif

reboot:
	-@$(AVRDUDE) -U lfuse:v:0xFF:m 2> /dev/null 1> /dev/null
	@echo rebooted

getfuses:
	$(AVRDUDE) -U lfuse:r:lfuse.hex:h
	$(AVRDUDE) -U hfuse:r:hfuse.hex:h
	$(AVRDUDE) -U efuse:r:efuse.hex:h

getsig:
	$(AVRDUDE) -U signature:r:signature.hex:h -U prodsig:r:prodsig.hex:h -U usersig:r:usersig.hex:h

geteeprom:
	$(AVRDUDE) -U eeprom:r:eeprom.hex:h

# set the fuse bits as standard arduino, compatible with optiboot
# but also add the EESAVE flag, set hfuse to 0xDE if you don't want this
# (see http://www.engbedded.com/fusecalc)
burn_bootloader:
	$(AVRDUDE) -F -U flash:w:"$(SCRIPTDIR)/optiboot_atmega328.hex":i -U lock:w:0x0F:m

download_from_avr:
	$(AVRDUDE) -U "flash:r:$(AVRDUDE_FILE):i"

import_to_avr:
	$(AVRDUDE) -U "flash:w:$(AVRDUDE_FILE):i"

.PHONY : reboot getfuses getsig geteeprom import_to_avr download_from_avr
.PHONY : document_module burn_bootloader reopen sil csil


##########
# ARM specific targets and recipes
##########

ifeq ($(REOPEN_PORT),)
reopen:
	@true
else
reopen:
	  "$(SCRIPTDIR)"/reopen_arduino_port_as_programmer.sh /dev/$(BOSSAC_PORT)
endif

ifneq ($(BOSSAC_PORT),)
upload-%.bin: $(FULL_BUILD_PATH)%.bin reopen
	$(BOSSAC) $(BOSSAC_OPTS) $<
else
upload-%.bin: $(FULL_BUILD_PATH)%.bin reopen
	@echo "*** Cannot find a suitable board. Do you need to put your Arduino into programming mode? ***"
endif

# frak off pirate :)
