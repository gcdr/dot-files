#!/bin/bash

xrdb -merge ~/.Xresources
exec ck-launch-session awesome
