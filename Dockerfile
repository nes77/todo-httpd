FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install --no-install-recommends --yes libsqlite3-dev libmicrohttpd-dev build-essential g++ cmake
COPY . /usr/local/todo-http
WORKDIR /usr/local/todo-http
RUN cmake CMakeLists.txt && make && make install
EXPOSE 80
CMD todo_http
