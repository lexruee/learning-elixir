#!/usr/bin/env elixir

upcase = fn word -> String.upcase(word) end
IO.puts upcase.("Hello, World!")

upcase = &String.upcase/1
IO.puts upcase.("Hello, World!")

sum = &(&1 + &2)
product = &(&1 * &2)

IO.puts "sum.(1,2)=#{sum.(1,2)}"
IO.puts "product.(2,3)=#{product.(2,3)}"
