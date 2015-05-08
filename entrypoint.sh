#!/bin/bash
#set -e

if [[ $API_KEY ]]; then
	sed -i "s/api-key:.*/api-key: $API_KEY/" /etc/dataloop/agent.yaml
else
	echo "You must set API_KEY environment variable to run the Dataloop Agent container"
	exit 1
fi
nohup /usr/bin/cadvisor &
exec "$@"
