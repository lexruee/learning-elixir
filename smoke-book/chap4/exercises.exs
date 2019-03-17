#!/usr/bin/env elixir

# Exercise 1
defmodule MyList do
  def max([]), do: 0
  def max([x]), do: x
  def max([x, y | xs]) when x > y, do: max([x | xs])
  def max([x, y | xs]) when x <= y, do: max([y | xs])

  def min([]), do: 0
  def min([x]), do: x
  def min([x, y | xs]) when x < y, do: min([x | xs])
  def min([x, y | xs]) when x >= y, do: min([y | xs])
end

IO.puts MyList.max([4, 2, 16, 9, 10])
IO.puts MyList.min([4, 2, 16, 9, 10])

# Exercise 2
defmodule GeneralStore do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Spear", price: 100, magic: true},
    ]
  end

  def filter_items([], _filter), do: []
  def filter_items([item=%{magic: is_magic} | products], [magic: is_magic]) do
	[item | filter_items(products, [magic: is_magic])]
  end
  def filter_items([_item | products], filter), do: filter_items(products, filter)
end

IO.inspect GeneralStore.filter_items(GeneralStore.test_data, magic: true)
IO.inspect GeneralStore.filter_items(GeneralStore.test_data, magic: false)

# Exercise 3
defmodule Sort do
  def ascending([]), do: []
  def ascending([a]), do: [a]
  def ascending(list) do
    half_size = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, half_size)
    merge(
      ascending(list_a),
      ascending(list_b)
    )
  end

  defp merge([], list_b), do: list_b
  defp merge(list_a, []), do: list_a
  defp merge([head_a | tail_a], list_b = [head_b | _]) when head_a <= head_b do
	[head_a | merge(tail_a, list_b)]
  end
  defp merge(list_a = [head_a | _], [head_b | tail_b]) when head_a > head_b do
	[head_b | merge(list_a, tail_b)]
  end

  def descending(list), do: reverse(ascending(list), [])
  def reverse([], reversed), do: reversed
  def reverse([x | tail], reversed), do: reverse(tail, [x | reversed])
end

IO.inspect Sort.reverse [1,2,3,4,5], []
IO.inspect Sort.descending [1,2,3,4,5]

# Exercise 4
defmodule MySum do
  def up_to(n), do: up_to_iter(n, 0)
  defp up_to_iter(0, acc), do: acc
  defp up_to_iter(n, acc) when n > 0, do:  up_to_iter(n-1, n + acc)
end

IO.inspect MySum.up_to(0)
IO.inspect MySum.up_to(100)

defmodule MyMath do
  def sum(list), do: sum_iter(list, 0)
  defp sum_iter([], acc), do: acc
  defp sum_iter([head | tail], acc), do: sum_iter(tail, acc + head)
end

IO.inspect MyMath.sum([0])
IO.inspect MyMath.sum([1,2,3,4,5])
