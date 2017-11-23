# Avahi Example in Resin.io

## Introduction

This is a simple example for using avahi in [Resin.io](http://resin.io).

We'll use the hostos's avahi daemon and `avahi-browse` to discover devices in the local network. 

### Note for Raspberry pi 1
If the device you are planning to use is a raspberry pi 1 you will have to modify Dockerfile.template in order to use the application.
```
FROM resin/%%RESIN_MACHINE_NAME%%-debian
```
To
```
FROM resin/%%RESIN_MACHINE_NAME%%-raspbian
```
