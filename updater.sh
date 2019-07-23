#!/bin/bash

sudo apt update && apt list --upgradable && sudo apt upgrade -y && sudo apt clean && sudo apt autoclean