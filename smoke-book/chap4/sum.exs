#!/usr/bin/env elixir

defmodule NaiveSum do
  def up_to(0), do: 0
  def up_to(n), do: n + up_to(n-1)
end

defmodule Sum do
  def up_to(n), do: iter(n, 0)
  defp iter(n, acc) when n == 0, do: acc
  defp iter(n, acc) when n > 0, do:  iter(n-1, acc + n)
end

IO.inspect Sum.up_to(0)
IO.inspect Sum.up_to(100)

IO.inspect NaiveSum.up_to(0)
IO.inspect NaiveSum.up_to(100)

