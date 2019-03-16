#!/usr/bin/env elixir

defmodule Sum do
  def up_to(n), do: iter(n, 0)
  defp iter(n, acc) when n == 0, do: acc
  defp iter(n, acc) when n > 0, do:  iter(n-1, acc + n)
end

IO.inspect Sum.up_to(0)
IO.inspect Sum.up_to(100)
