#!/usr/bin/env elixir

defmodule NaiveProduct do
  def up_to(0), do: 1
  def up_to(n), do: n * up_to(n-1)
end

defmodule Product do
  def up_to(n), do: iter(n, n)
  defp iter(n, _acc) when n == 0, do: 1
  defp iter(n, acc) when n == 1, do: acc
  defp iter(n, acc) when n > 1, do:  iter(n-1, acc * (n - 1))
end

IO.inspect NaiveProduct.up_to(0)
IO.inspect NaiveProduct.up_to(1)
IO.inspect NaiveProduct.up_to(2)
IO.inspect NaiveProduct.up_to(3)
IO.inspect NaiveProduct.up_to(4)

IO.inspect Product.up_to(0)
IO.inspect Product.up_to(1)
IO.inspect Product.up_to(2)
IO.inspect Product.up_to(3)
IO.inspect Product.up_to(4)

