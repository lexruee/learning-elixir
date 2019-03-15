#!/usr/bin/env elixir

IO.puts String.capitalize("hi Friends!")
IO.puts String.downcase("HELLO")

IO.inspect Integer.parse("42")
IO.inspect Integer.to_string(-42)
IO.inspect Integer.digits(42)

IO.inspect Float.ceil(3.7)
IO.inspect Float.floor(3.7)
IO.inspect Float.round(3.7)

IO.puts "Hello, World!"
#input = IO.gets "Whats your name?\n"
#IO.inspect input

IO.inspect div(1,2)
IO.inspect rem(1,2)
IO.inspect is_number("Hi!")
