#!/usr/bin/env elixir

defmodule Gcd do
  def gcd(a, 0), do: a
  def gcd(a, b), do: gcd(b, rem(a, b))
end

IO.inspect Gcd.gcd(12,6)
IO.inspect Gcd.gcd(12,9)
