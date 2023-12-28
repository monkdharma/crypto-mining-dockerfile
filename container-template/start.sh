#!/bin/bash
set -e

if [ $MINING == "lolminer" ];then
  lolMiner --algo $ALGORITHM --pool $POOL --user $WALLET.$HOSTNAME $OTHER_ARGS
elif [ "$MINING" == "gminer" ];then
  miner --algo $ALGORITHM --server $POOL --user $WALLET.$HOSTNAME $OTHER_ARGS
elif [ "$MINING" == "srbminer" ];then
  SRBMiner-MULTI -a $ALGORITHM -o $POOL -u $WALLET.$HOSTNAM $OTHER_ARGS
fi
