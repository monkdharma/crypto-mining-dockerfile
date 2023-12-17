#!/bin/bash
set -e

if [ $MINING == "lolminer" ];then
  lolMiner --algo $ALGORITHM --pool $POOL --user $WALLET.$HOSTNAME pause
elif [ "$MINING" == "gminer" ];then
  miner --algo $ALGORITHM --server $POOL --user $WALLET.$HOSTNAME pause
fi
