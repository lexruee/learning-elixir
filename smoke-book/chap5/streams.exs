#!/usr/bin/env elixir

integers = Stream.iterate(1, &(&1 + 1))
IO.inspect Stream.take integers, 10
IO.inspect Stream.take(integers, 10) |> Enum.to_list

sum = Stream.iterate(1, &(&1 + 1))
      |> Stream.take(100)
      |> Enum.reduce(&(&1 + &2))
IO.inspect sum

product = Stream.iterate(1, &(&1 + 1))
          |> Stream.take(10)
          |> Enum.reduce(&(&1 * &2))
IO.inspect product

fibonacci_numbers = Stream.unfold({0, 1}, fn {f1, f2} -> {f1, {f2, f1 + f2}} end)
IO.inspect fibonacci_numbers |> Stream.take(10) |> Enum.to_list


