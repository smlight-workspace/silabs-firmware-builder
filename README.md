# Silicon Labs firmware builder repository

This repository contains Dockerfiles and GitHub actions which build Silicon Labs
firmware for Home Assistant Yellow and SkyConnect, Sonoff ZBDongle-E and EasyIot ZB-GW04 v1.1 and v1.2.

It uses the Silicon Labs Gecko SDK and proprietary Silicon Labs tools such as
the Silicon Labs Configurator (slc) and the Simplicity Commander standalone
utility. This is a fork of the [NabuCasa](https://github.com/NabuCasa/silabs-firmware-builder) silabs firmware builder, adding support for additional hardware.

Three firmware variants are available:
* EmberZNet NCP for Zigbee-only environments, for direct use with Zigbee2MQTT, ZHA or Zigpy or other Zigbee stacks
* RCP Multi-PAN firmware for concurrent communication over Zigbee and Thread
* OpenThread RCP firmware (experimental) Thread-only

RCP Multi-PAN and OpenThread RCP firmwares are for use with Home Assistant [SiliconLabs Multiprotocol add-on](https://github.com/home-assistant/addons/blob/master/silabs-multiprotocol/DOCS.md)

## Pre-Compiled Firmware
Firmware builds can be found in the [firmware_builds](https://github.com/darkxst/silabs-firmware-builder/tree/main/firmware_builds) folder.

`ncp-uart-hw-` EmberZnet pure Zigbee  
`rcp-uart-802154-` RCP MultiPan  
`ot-rcp-` OpenThread Only  

ZBDongle-E and ZB-GW04 v1.1 do not support hardware flow control. Yellow, SkyConnect and ZB-GW04 v1.2 are built with hardware flow control. Various baudrates are available as listed at end of filename.

Use NabuCasa's [Universal-Silabs-Flasher](https://github.com/NabuCasa/universal-silabs-flasher) to flash the `.gbl` files.

## Building locally

To build a firmware locally the build container can be reused. Simply start the
container local with a build directory bind-mounted, e.g.

```sh
docker run --rm -it \
  --user builder \
  -v $(pwd)/build:/build \
  ghcr.io/darkxst/silabs-firmware-builder:4.2.2
```

To generate a project, use `slc generate`. To replicate/debug build issues in
an existing GitHub action, it is often helpful to just copy the command from
the "Generate Firmware Project" step.

```sh
  slc generate \
      --with="MGM210PA32JIA,simple_led:board_activity" \
      --project-file="/gecko_sdk/protocol/openthread/sample-apps/ot-ncp/rcp-uart-802154.slcp" \
      --export-destination=rcp-uart-802154-yellow \
      --copy-proj-sources --new-project --force \
      --configuration=""
```

Then build it using commands from the "Build Firmware" step:

```sh
cd rcp-uart-802154-yellow
make -f rcp-uart-802154.Makefile release
```
