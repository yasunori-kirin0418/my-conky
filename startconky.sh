#!/usr/bin/env bash

cd script
conky -d -c cpu/cpu.conky
sleep 5
conky -d -c memory/memory.conky
