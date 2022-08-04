#!/bin/bash
export CONTRACT_NAME=nft.duonghb3.testnet
KEYS="$(node main.js)"
echo $KEYS
near --accountId $CONTRACT_NAME call $CONTRACT_NAME clean ''$KEYS'' --gas 300000000000000
