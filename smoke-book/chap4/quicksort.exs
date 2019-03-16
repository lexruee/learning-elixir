#!/usr/bin/env elixir

defmodule QuickSort do
  def sort([]), do: []
  def sort([a]), do: [a]
  def sort(xs) do
    pivot = div(Enum.count(xs), 2)
    p = Enum.at(xs, pivot)
    Enum.concat([
      sort(Enum.filter(xs, fn x -> p > x end)),
      Enum.filter(xs, fn x -> p == x end),
      sort(Enum.filter(xs, fn x -> p < x end))
    ])
  end
end


IO.inspect QuickSort.sort([5,4,3,2,1])
IO.inspect QuickSort.sort([4,1,3,5,2])
