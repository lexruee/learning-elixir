#!/usr/bin/env elixir

a_range = 1..10
IO.inspect a_range

Enum.each a_range, &IO.puts/1
IO.inspect Enum.reduce a_range, 0, &+/2
IO.inspect Enum.reduce a_range, 1, &*/2

large_range = 1..10_000_000
IO.inspect Enum.take(large_range, 10)
