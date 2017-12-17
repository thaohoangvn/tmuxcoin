#!/bin/sh

source $HOME/.icos.sh

get_coin() {
  TICKER_DATA=`curl --request GET --url https://api.bitfinex.com/v1/pubticker/${1}usd | jq '.mid'`
  echo -n " $1: $TICKER_DATA |" >> p.dat
}

get_coins() {
  rm p.dat
  for ico in $ICOS; do
    get_coin $ico &
  done; wait
  cat p.dat; return
}

get_coins
