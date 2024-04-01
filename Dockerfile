FROM gcc:13.2
RUN apt-get update && apt-get install -y gdb gdbserver

WORKDIR /app
COPY Makefile /app
COPY headers /app
COPY hello-world.cpp /app

RUN make build

ENTRYPOINT [ "./app/hello-world" ]
