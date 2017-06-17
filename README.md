# lede-17-01-02-ht-tm02-cc
---

This is a `Dockerfile` to make a C cross compiler for LEDE 17.01.02 on the Ralink RT5350F chipset.

I'm planning to use it for cross-compiling to my HooToo HT-TM02, using the example 
batch file `lede-tm02-cc` like this:

`lede-tm02-cc mipsel-openwrt-linux-gcc hello.c -o hello`

...which would cross compile `hello.c` for running on the HooToo HT-TM02.
