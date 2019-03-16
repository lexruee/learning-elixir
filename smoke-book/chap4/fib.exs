#!/usr/bin/env elixir

defmodule Fibonacci do
  def fib(n), do: iter(n, 1, 1)
  defp iter(n, _f1, f2) when n == 0, do: f2
  defp iter(n, f1, f2) when n > 0, do:  iter(n-1, f2, f1 + f2)
end

IO.inspect Enum.map((0..8), &Fibonacci.fib/1)
