go get github.com/jteeuwen/go-bindata
cd $GOPATH/src/github.com/jteeuwen/go-bindata/go-bindata
go build

# copy go-bindata into any directory on your PATH
cp go-bindata ~/gocode/bin

export PATH=$PATH:/home/ejabberd/gocode/bin


