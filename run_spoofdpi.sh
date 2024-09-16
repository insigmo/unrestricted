#!/bin/bash

apt update && apt install curl -yf
curl -fsSL https://raw.githubusercontent.com/xvzc/SpoofDPI/main/install.sh | bash -s linux-amd64
~/.spoofdpi/bin/spoofdpi