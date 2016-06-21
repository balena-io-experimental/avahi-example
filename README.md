# Avahi Example in Resin.io

## Introduction

This is a simple example for using avahi in [Resin.io](http://resin.io).

The host-name will be set as the short UUID you see in the Dashboard.

Default domain: `<DEVICE_UUID>.local`

### Note for Raspberry pi 1
If the device you are planning to use is a raspberry pi 1 you will have to modify Dockerfile.template in order to use the application.
```
FROM resin/%%RESIN_MACHINE_NAME%%-debian
```
To
```
FROM resin/%%RESIN_MACHINE_NAME%%-raspbian
```