#!/bin/bash

source install_dependencies.sh
source diable_shortcuts.sh
source local_security.sh

firefox --new-window --kiosk www.google.com &

echo "Recording screen..."
recordmydesktop out.ogv &
sleep 10


echo "Ending exam..."
pids=($(ps -aux | grep firefox | cut -d ' ' -f 6))
for id in "${pids[@]}"
do
	kill -2 $id
done

pids=($(ps -aux | grep recordmydesktop | cut -d ' ' -f 6))
for id in "${pids[@]}"
do
	kill -2 $id
done


