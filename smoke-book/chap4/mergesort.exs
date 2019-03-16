#!/usr/bin/env elixir

defmodule MergeSort do
  def sort([]), do: []
  def sort([a]), do: [a]
  def sort(xs) do
    half_size = div(Enum.count(xs), 2)
    {ys, zs} = Enum.split(xs, half_size)
    merge(sort(ys), sort(zs))
  end
  defp merge([], zs), do: zs
  defp merge(ys, []), do: ys
  defp merge([y | ys], [z | zs]) when y < z, do: [ y | merge(ys, [z | zs]) ]
  defp merge([y | ys], [z | zs]) when y >= z, do: [ z | merge([y | ys], zs) ]
end


IO.inspect MergeSort.sort([5,4,3,2,1])
IO.inspect MergeSort.sort([4,1,3,5,2])
