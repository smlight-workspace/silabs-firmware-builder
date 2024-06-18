################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/tim/SimplicityStudio/SDKs/gecko_sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c 

OBJS += \
./gecko_sdk_4.4.1/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o 

C_DEPS += \
./gecko_sdk_4.4.1/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.4.1/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: /home/tim/SimplicityStudio/SDKs/gecko_sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c gecko_sdk_4.4.1/util/silicon_labs/silabs_core/memory_manager/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24A021F1024IM40=1' '-DSE_MANAGER_CONFIG_FILE="btl_aes_ctr_stream_block_cfg.h"' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_GPIO_ACTIVATION=1' '-DBTL_UART_ENABLE=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_TRUSTZONE_SECURE=1' -I"/home/tim/SimplicityStudio/v5_workspace2/bootloader-uart-xmodem_smlight-mg24v2/config" -I"/home/tim/SimplicityStudio/v5_workspace2/bootloader-uart-xmodem_smlight-mg24v2/autogen" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/gpio/gpio-activation" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication/xmodem-parser" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/inc" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/src" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//util/third_party/trusted-firmware-m/lib/fih/inc" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//util/third_party/trusted-firmware-m/platform/include" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/tim/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -Wno-ignored-qualifiers -Wno-sign-compare --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.4.1/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


