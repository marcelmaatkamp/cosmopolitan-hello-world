# cosmopolitan amalgamation

# TL;DR 
Compiles 'hello-world.c' into a binary which can be executed in linux, mac, windows, FreeBSD, OpenBSD, you can even boot it on bare metal!

# Description
Cosmopolitan Libc makes C a build-once run-anywhere language, like Java, except it doesn't need an interpreter or virtual machine. Instead, it reconfigures stock GCC and Clang to output a POSIX-approved polyglot format that runs natively on Linux + Mac + Windows + FreeBSD + OpenBSD + NetBSD + BIOS with the best possible performance and the tiniest footprint imaginable.

This repository builds a docker container with Cosmopolitan Libc from 
 - https://justine.lol/cosmopolitan/index.html

And the 'hello-world.c' from
 - https://github.com/jart/cosmopolitan/blob/master/examples/hello.c

And puts the executable into 

# usage 
```
$ docker-compose up --build
```
