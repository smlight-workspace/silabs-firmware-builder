################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.4.1/util/third_party/trusted-firmware-m/platform/ext/target/siliconlabs/hse/subdir.mk
-include gecko_sdk_4.4.1/util/third_party/trusted-firmware-m/lib/fih/src/subdir.mk
-include gecko_sdk_4.4.1/util/third_party/mbedtls/library/subdir.mk
-include gecko_sdk_4.4.1/util/silicon_labs/silabs_core/memory_manager/subdir.mk
-include gecko_sdk_4.4.1/platform/service/udelay/src/subdir.mk
-include gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/subdir.mk
-include gecko_sdk_4.4.1/platform/security/sl_component/sl_mbedtls_support/src/subdir.mk
-include gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/subdir.mk
-include gecko_sdk_4.4.1/platform/emlib/src/subdir.mk
-include gecko_sdk_4.4.1/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.4.1/platform/common/src/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/security/sha/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/security/ecc/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/security/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/parser/gbl/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/gpio/gpio-activation/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/driver/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/debug/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/core/flash/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/core/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/communication/xmodem-uart/subdir.mk
-include gecko_sdk_4.4.1/platform/bootloader/communication/xmodem-parser/subdir.mk
-include gecko_sdk_4.4.1/platform/Device/SiliconLabs/EFR32MG24/Source/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := bootloader-uart-xmodem_smlight-mg24v2
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: bootloader-uart-xmodem_smlight-mg24v2.axf

# Tool invocations
bootloader-uart-xmodem_smlight-mg24v2.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -T "/home/tim/SimplicityStudio/v5_workspace2/bootloader-uart-xmodem_smlight-mg24v2/autogen/linkerfile.ld" -Wl,--no-warn-rwx-segments -Xlinker --gc-sections -Xlinker -Map="bootloader-uart-xmodem_smlight-mg24v2.map" -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -o bootloader-uart-xmodem_smlight-mg24v2.axf -Wl,--start-group "./gecko_sdk_4.4.1/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.o" "./gecko_sdk_4.4.1/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.o" "./gecko_sdk_4.4.1/platform/bootloader/communication/xmodem-parser/btl_xmodem.o" "./gecko_sdk_4.4.1/platform/bootloader/communication/xmodem-uart/btl_comm_xmodem.o" "./gecko_sdk_4.4.1/platform/bootloader/communication/xmodem-uart/btl_comm_xmodem_common.o" "./gecko_sdk_4.4.1/platform/bootloader/core/btl_bootload.o" "./gecko_sdk_4.4.1/platform/bootloader/core/btl_core.o" "./gecko_sdk_4.4.1/platform/bootloader/core/btl_main.o" "./gecko_sdk_4.4.1/platform/bootloader/core/btl_parse.o" "./gecko_sdk_4.4.1/platform/bootloader/core/btl_reset.o" "./gecko_sdk_4.4.1/platform/bootloader/core/flash/btl_internal_flash.o" "./gecko_sdk_4.4.1/platform/bootloader/debug/btl_debug.o" "./gecko_sdk_4.4.1/platform/bootloader/debug/btl_debug_swo.o" "./gecko_sdk_4.4.1/platform/bootloader/driver/btl_driver_delay.o" "./gecko_sdk_4.4.1/platform/bootloader/driver/btl_driver_uart.o" "./gecko_sdk_4.4.1/platform/bootloader/driver/btl_driver_util.o" "./gecko_sdk_4.4.1/platform/bootloader/gpio/gpio-activation/btl_gpio_activation.o" "./gecko_sdk_4.4.1/platform/bootloader/parser/gbl/btl_gbl_custom_tags.o" "./gecko_sdk_4.4.1/platform/bootloader/parser/gbl/btl_gbl_format.o" "./gecko_sdk_4.4.1/platform/bootloader/parser/gbl/btl_gbl_parser.o" "./gecko_sdk_4.4.1/platform/bootloader/security/btl_crc16.o" "./gecko_sdk_4.4.1/platform/bootloader/security/btl_crc32.o" "./gecko_sdk_4.4.1/platform/bootloader/security/btl_security_aes.o" "./gecko_sdk_4.4.1/platform/bootloader/security/btl_security_ecdsa.o" "./gecko_sdk_4.4.1/platform/bootloader/security/btl_security_sha256.o" "./gecko_sdk_4.4.1/platform/bootloader/security/btl_security_tokens.o" "./gecko_sdk_4.4.1/platform/bootloader/security/ecc/ecc.o" "./gecko_sdk_4.4.1/platform/bootloader/security/sha/btl_sha256.o" "./gecko_sdk_4.4.1/platform/bootloader/security/sha/crypto_sha.o" "./gecko_sdk_4.4.1/platform/bootloader/security/sha/cryptoacc_sha.o" "./gecko_sdk_4.4.1/platform/bootloader/security/sha/se_sha.o" "./gecko_sdk_4.4.1/platform/common/src/sl_assert.o" "./gecko_sdk_4.4.1/platform/common/src/sl_syscalls.o" "./gecko_sdk_4.4.1/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_acmp.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_burtc.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_core.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_dbg.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_emu.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_eusart.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_gpcrc.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_i2c.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_iadc.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_ldma.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_letimer.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_msc.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_opamp.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_pcnt.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_prs.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_rmu.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_se.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_system.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_timer.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_usart.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_vdac.o" "./gecko_sdk_4.4.1/platform/emlib/src/em_wdog.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o" "./gecko_sdk_4.4.1/platform/security/sl_component/se_manager/src/sl_se_manager_util.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_mbedtls_support/src/se_aes.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o" "./gecko_sdk_4.4.1/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o" "./gecko_sdk_4.4.1/platform/service/udelay/src/sl_udelay.o" "./gecko_sdk_4.4.1/platform/service/udelay/src/sl_udelay_armv6m_gcc.o" "./gecko_sdk_4.4.1/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o" "./gecko_sdk_4.4.1/util/third_party/mbedtls/library/aes.o" "./gecko_sdk_4.4.1/util/third_party/mbedtls/library/constant_time.o" "./gecko_sdk_4.4.1/util/third_party/mbedtls/library/platform.o" "./gecko_sdk_4.4.1/util/third_party/mbedtls/library/platform_util.o" "./gecko_sdk_4.4.1/util/third_party/mbedtls/library/psa_crypto_client.o" "./gecko_sdk_4.4.1/util/third_party/mbedtls/library/psa_util.o" "./gecko_sdk_4.4.1/util/third_party/mbedtls/library/threading.o" "./gecko_sdk_4.4.1/util/third_party/trusted-firmware-m/lib/fih/src/fih.o" "./gecko_sdk_4.4.1/util/third_party/trusted-firmware-m/platform/ext/target/siliconlabs/hse/sli_se.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: bootloader-uart-xmodem_smlight-mg24v2.out'
	arm-none-eabi-objcopy "bootloader-uart-xmodem_smlight-mg24v2.axf" "bootloader-uart-xmodem_smlight-mg24v2.out"
	@echo ' '

	@echo 'Building hex file: bootloader-uart-xmodem_smlight-mg24v2.hex'
	arm-none-eabi-objcopy -O ihex "bootloader-uart-xmodem_smlight-mg24v2.axf" "bootloader-uart-xmodem_smlight-mg24v2.hex"
	@echo ' '

	@echo 'Building bin file: bootloader-uart-xmodem_smlight-mg24v2.bin'
	arm-none-eabi-objcopy -O binary "bootloader-uart-xmodem_smlight-mg24v2.axf" "bootloader-uart-xmodem_smlight-mg24v2.bin"
	@echo ' '

	@echo 'Building s37 file: bootloader-uart-xmodem_smlight-mg24v2.s37'
	arm-none-eabi-objcopy -O srec "bootloader-uart-xmodem_smlight-mg24v2.axf" "bootloader-uart-xmodem_smlight-mg24v2.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "bootloader-uart-xmodem_smlight-mg24v2.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) bootloader-uart-xmodem_smlight-mg24v2.axf
	-@echo ' '

post-build:
	-"/home/tim/Downloads/SimplicityStudio_v5/developer/adapter_packs/commander/commander" postbuild "/home/tim/SimplicityStudio/v5_workspace2/bootloader-uart-xmodem_smlight-mg24v2/bootloader-uart-xmodem_smlight-mg24v2.slpb" --parameter build_dir:"/home/tim/SimplicityStudio/v5_workspace2/bootloader-uart-xmodem_smlight-mg24v2/GNU ARM v12.2.1 - Default"
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
