from alpine:edge
run apk update --no-cache && apk add strace
env PROCESS_NAME main
env PROCESS_TRACE open,stat,write
copy entrypoint.sh /
workdir /
cmd ["./entrypoint.sh"]
