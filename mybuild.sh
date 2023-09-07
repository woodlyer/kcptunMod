


GOOS=windows GOARCH=amd64 go build -o client_windows_amd64.exe  github.com/xtaci/kcptun/client 


CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build --ldflags="-s -w" -o client_linux_amd64   github.com/xtaci/kcptun/client
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build --ldflags="-s -w" -o server_linux_amd64   github.com/xtaci/kcptun/server 





debug(){
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -gcflags=all="-N -l" -o server_debug   github.com/xtaci/kcptun/server
}





