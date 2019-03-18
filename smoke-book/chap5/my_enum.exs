#!/usr/bin/env elixir

defmodule MyEnum do
  def max([]), do: 0
  def max([x]), do: x
  def max([x, y | xs]) when x > y, do: max([x | xs])
  def max([x, y | xs]) when x <= y, do: max([y | xs])

  def min([]), do: 0
  def min([x]), do: x
  def min([x, y | xs]) when x < y, do: min([x | xs])
  def min([x, y | xs]) when x >= y, do: min([y | xs])

  def sum(list), do: sum_iter(list, 0)
  defp sum_iter([], acc), do: acc
  defp sum_iter([head | tail], acc), do: sum_iter(tail, head + acc)

  def product(list), do: product_iter(list, 1)
  defp product_iter([], acc), do: acc
  defp product_iter([head | tail], acc), do: product_iter(tail, head * acc)

  def descending(list), do: reverse(ascending(list))

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

  def reverse(list), do: reverse_iter(list, [])
  defp reverse_iter([], reversed), do: reversed
  defp reverse_iter([x | tail], reversed), do: reverse_iter(tail, [x | reversed])

  def each([], _fun), do: nil
  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def reverse_each(list, fun) do
    list
    |> reverse
    |> each(fun)
  end

  def reverse_map(list, fun) do
    list
    |> reverse
    |> map(fun)
  end

  def reduce(list, init, fun), do: reduce_iter(list, init, fun)
  def reduce_iter([], acc, _fun), do: acc
  def reduce_iter([head | tail], acc, fun), do: reduce_iter(tail, fun.(acc, head), fun)

  def map(list, fun), do: map_iter(list, [], fun)
  def map_iter([], acc, _fun), do: acc
  def map_iter([head | tail], acc, fun), do:  map_iter(tail,  acc ++ [fun.(head)], fun)

  def filter(list, fun), do: filter_iter(list, [], fun)
  def filter_iter([], filtered, _fun), do: filtered
  def filter_iter([head | tail], filtered, fun) do
    case fun.(head) do
      true -> filter_iter(tail, filtered ++ [head], fun)
      false -> filter_iter(tail, filtered, fun)
    end
  end
end

MyEnum.each([1,2,3,4], fn num -> IO.puts num end)
MyEnum.reverse_each([1,2,3,4], fn num -> IO.puts num end)
new_list = MyEnum.map([1,2,3,4], fn num -> num * num end)
IO.inspect new_list

reversed_list = MyEnum.reverse([1,2,3,4,5])
IO.inspect reversed_list
squares = MyEnum.reverse_map([1,2,3,4,5], fn num -> :math.pow(num, 2) end)
IO.inspect squares

IO.puts MyEnum.sum([1,2,3,4,5])
IO.puts MyEnum.product([1,2,3,4,5])

IO.inspect MyEnum.filter([1,2,3,4,5], fn num -> rem(num,2) == 0 end)
IO.inspect MyEnum.reduce([1,2,3,4,5], 0, fn acc, num -> acc + num end)
