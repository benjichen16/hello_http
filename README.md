# hello_http

Hello world with a webserver in C

## How to build

`gcc -o dummyserv dummy_serv.c`

Or to build a static binary

`gcc -o dummyserv dummy_serv.c`

## How to run

To build and run the docker container:

    ```docker build -t dummyserv .```

    ```docker run -p 8080:8080 dummyserv```
