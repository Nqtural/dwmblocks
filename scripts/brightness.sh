#!/bin/bash

brightnessctl -m | awk -F "," '{print $4}'
