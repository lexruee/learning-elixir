#!/usr/bin/env elixir

defmodule HigherOrderFunctions do
  def compose(f, g), do: fn arg -> f.(g.(arg)) end

  def capitalize_words(title) do
    title
    |> String.split
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(" ")
  end
end

mult2_then_add2_fun = HigherOrderFunctions.compose &(&1 + 2) , &(&1 * 2)
IO.inspect mult2_then_add2_fun.(3)

first_letter_and_upcase = HigherOrderFunctions.compose &String.upcase/1, &String.first/1
IO.inspect first_letter_and_upcase.("works")

IO.inspect "works" |> String.first
IO.inspect "works" |> String.first |> String.upcase

IO.inspect "hello, world!" |> HigherOrderFunctions.capitalize_words
