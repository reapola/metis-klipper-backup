#!/bin/sh
now=$(date +"%F-%H_%M_%S")

echo Doing a full probe accuracy test
python3 $HOME/probe_accuracy_tests/probe_accuracy_test_suite.py

echo Moving Files
mv /home/reapola/probe_accuracy_tests/output/* /home/reapola/klipper_config/probe_accuracy/

echo Backing up to github
/home/reapola/klipper_config/scripts/backup_klipper.sh