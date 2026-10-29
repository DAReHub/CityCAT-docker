#!/usr/bin/env bash
# wait a moment for wine/user home/setup to settle
sleep 1

# Run your program headlessly
wine /opt/app/CityCat.exe "$@"
