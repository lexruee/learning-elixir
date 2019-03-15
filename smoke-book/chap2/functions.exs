#!/usr/bin/env elixir

# Creating Anonymous Functions
greeter = fn name -> "Hello, #{name}!" end

IO.puts greeter.("Alex")
IO.puts greeter.("Peter")

one_plus_one = fn -> 1 + 1 end
IO.puts one_plus_one.()

total_price = fn price, quantity -> price * quantity end
IO.puts "total price: #{total_price.(5, 6)}"

# Functions as First-Class Citizens
total_price = fn price, fee_fun -> price * fee_fun.(price) end
flat_fee = fn price -> 5 end
proportional_fee = fn price -> price * 0.12 end

IO.puts "total price with flat fee: #{total_price.(1000, flat_fee)}"
IO.puts "total price with proportional fee: #{total_price.(1000, proportional_fee)}"
