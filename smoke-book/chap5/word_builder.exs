#!/usr/bin/env elixir

defmodule WordBuilder do
  def build(alphabet, positions) do
    letters = Enum.map(positions, &String.at(alphabet, &1))
    Enum.join(letters)
  end
end

IO.inspect WordBuilder.build("world", [4, 1, 1, 2])
