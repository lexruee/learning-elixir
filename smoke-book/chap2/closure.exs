#!/usr/bin/env elixir

message = "Hello, World!"
say_hello = fn -> Process.sleep(1000); IO.puts(message) end
spawn(say_hello)

answer = 42
make_answer = fn  -> other_answer = 88 + answer end
IO.puts make_answer.()

product_price = 200
quantity = 2
calculate = fn quantity -> product_price * quantity end

IO.puts calculate.(4)
product_price = 400
IO.puts calculate.(4)
