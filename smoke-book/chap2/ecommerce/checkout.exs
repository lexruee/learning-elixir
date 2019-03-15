#!/usr/bin/env elixir

defmodule Ecommerce.Checkout do
  def total_cost(price, tax_rate), do: price * (tax_rate + 1)
end


IO.puts Ecommerce.Checkout.total_cost(100, 0.2)
