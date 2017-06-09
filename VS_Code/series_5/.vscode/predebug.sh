#!/bin/bash

INSTRUMENT_IP=10.85.4.86

#scp /home/sdonohue/Documents/ASD_GitLab/series_5/instrument/Debug/instrument root@${INSTRUMENT_IP}:/usr/bin
scp /home/sdonohue/Documents/ASD_GitLab/series_5/instrument/build/instrument root@${INSTRUMENT_IP}:/usr/bin
ssh -T root@${INSTRUMENT_IP}<<EOT
gdbserver :2345 /usr/bin/instrument


