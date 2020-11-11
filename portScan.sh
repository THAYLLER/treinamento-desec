#!/bin/bash
if ["$i" == "" && "$p" == ""]
then
  echo "PORTSCAN NETWORK"
  echo "Modo de uso: $0 REDE"
  echo "Exemplo: $0 172.16.1 80"
else
  for ip in {1..254};
  do
    hping3 -S -p $p -c 1 $i.$ip 2> /dev/null | grep "flabs=SA" | cut -d " " -f 2 cut -d "=" -f 2;
  done
fi