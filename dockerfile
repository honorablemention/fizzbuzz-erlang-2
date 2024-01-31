FROM erlang:latest

WORKDIR /app

COPY . /app

RUN erlc fizzbuzzSample.erl

CMD ["erl", "-noshell", "-s", "fizzbuzzSample", "fizzbuzz", "-s", "init", "stop"]