#!/bin/sh
source $HOME/.icos.sh
P_TEXT=""
for ico in $ICOS 
do
  BF_URL=https://api.bitfinex.com/v1/pubticker/${ico}usd
  TICKER_DATA=`curl --request GET --url $BF_URL | jq '.mid'`
  P_TEXT="$ico: $TICKER_DATA | $P_TEXT"
done

echo $P_TEXT
