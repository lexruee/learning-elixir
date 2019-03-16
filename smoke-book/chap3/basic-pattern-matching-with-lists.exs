#!/usr/bin/env elixir

[a, a, a] = [1, 1, 1]
IO.inspect("a: #{a}, a: #{a}, a: #{a}")

[a, b, a] = [1, 2, 1]
IO.inspect("a: #{a}, b: #{b}, c: #{a}")

[a, b, c] = [1, 2, 3]
IO.inspect("a: #{a}, b: #{b}, c: #{c}")

[a, a, a] = ["apple", "apple", "apple"]
IO.inspect("a: #{a}, a: #{a}, a: #{a}")

[a, a, "pineapple"] = ["apple", "apple", "pineapple"]

[_, a, _] = [10, 2, 12]
IO.inspect("a: #{a}")

[_, a, a] = [10, 4, 4]
IO.inspect("a: #{a}")

[head | tail] = [:a, :b, :c, :d]
IO.inspect("head: #{head}")
IO.inspect(tail)

[a, b | rest] = [:a, :b, :c, :d]
IO.inspect("a: #{a}, b: #{b}")
rest_str = IO.inspect(rest)
