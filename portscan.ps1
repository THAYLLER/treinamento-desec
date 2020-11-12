param($ip)
if(!$ip){
  echo "PORTSCAN"
  echo ".\portscan.ps 192.168.0.1"
} else {
  try{
      foreach($porta in 1..1024) {
        if(Test-Netconnection $ip -port $porta -warningAction silentlyContinue -informationLevel Quiet) {
          echo "A porta $porta está aberta"
        }
      }
   } catch{}
}