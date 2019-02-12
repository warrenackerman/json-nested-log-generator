#!/bin/sh
while [ 1 ]
do
   waitTime=$(shuf -i 1-5 -n 1)
   sleep $waitTime &
   wait $!
   instruction=$(shuf -i 0-4 -n 1)
   d=$(date '+%Y-%m-%dT%H:%M:%S.%NZ')
   case "$instruction" in
      "1") echo '{"measure#web.latency":91704,"message":"completed handling request","method":"GET","remote":"10.233.80.0:54508","request":"/healthz","severity":"info","source":"logrus@v1.1.0/entry.go:111","status":200,"text_status":"OK","time":"'$d'12354Z","took":91704}'
      ;;
      "2") echo "$d INFO takes the value and converts it to string."
      ;;
      "3") echo "$d WARN variable not in use."
      ;;
      "4") echo "$d DEBUG first loop completed."
      ;;
   esac
done
