#!/usr/bin/env elixir

defmodule Checkout do

  def total_cost(price, tax_rate) do
    price * (tax_rate + 1)
  end

  def total_cost2(price, tax_rate), do: price * (tax_rate + 1)

end


IO.puts Checkout.total_cost(100, 0.2)
IO.puts Checkout.total_cost2(100, 0.2)
