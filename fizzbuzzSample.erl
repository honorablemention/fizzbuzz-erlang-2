-module(fizzbuzzSample).
-export([fizzbuzz/0]).

applyFizz(X) when X rem 3 == 0, X rem 5 == 0 -> "FizzBuzz";
applyFizz(X) when X rem 3 == 0 -> "Fizz";
applyFizz(X) when X rem 5 == 0 -> "Buzz";
applyFizz(X) -> X.

fizzbuzz() -> 
    Output = [applyFizz(X) || X <- lists:seq(1,100)],
    io:format("~p~n", [Output]).