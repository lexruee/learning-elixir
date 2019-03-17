#!/usr/bin/env elixir

#Exercise 1
expenses = 10 * 0.1 + 3 * 2 + 15
IO.puts "Sarah has spent #{expenses}$."

# Exercise 2
hours = 4
distance_km = 200
IO.puts "Bob has traveled #{distance_km} km in #{hours} hours; average velocity #{distance_km/hours}"


# Exercise 3
apply_tax = fn price -> 
  tax = price * 12/100 
  new_price = price + tax
  IO.puts "Price: #{new_price} - Tax: #{tax}"
end


IO.puts "Calculate tax-adjusted prices:"
Enum.each [12.5, 30.99, 250.49, 18.80], apply_tax

# Exercise 4
defmodule MatchstickFactory do
  def boxes(sticks) do
    # Big boxes: 50 sticks; Medium boxes: 20 sticks; Small boxes: 5 sticks
    # Question: x * 50 + y * 20 + z * 5 + rest = sticks
    # How can we partition the number sticks such that the above integer equation 
    # is satisfied.
    big_boxes = div(sticks, 50)
    remaining_sticks = rem(sticks, 50)

    medium_boxes = div(remaining_sticks, 20)
    remaining_sticks = rem(remaining_sticks, 20)

    small_boxes = div(remaining_sticks, 5)
    remaining_sticks = rem(remaining_sticks, 5)
    %{big: big_boxes, medium: medium_boxes, small: small_boxes, remaining_sticks: remaining_sticks}
  end
end

IO.inspect MatchstickFactory.boxes(98)
IO.inspect MatchstickFactory.boxes(39)
