#!/bin/bash

INSTRUMENT_IP=10.1.1.11

scp /home/sdonohue/Documents/ASD_Gitlab/asd-linux/series_5/instrument/Debug/instrument root@${INSTRUMENT_IP}:/home/root
ssh -T root@${INSTRUMENT_IP}<<EOT
gdbserver :2345 /home/root/instrument


