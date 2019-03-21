#!/usr/bin/env elixir

defmodule Math do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def product([]), do: 0
  def product([head | tail]), do: head * product(tail)

  def fibonacci(n), do: fibonacci_iter(n, 0, 1)
  defp fibonacci_iter(0, _f1, f2), do: f2
  defp fibonacci_iter(n, f1, f2), do: fibonacci_iter(n-1, f2, f1 + f2)

  def sum_list(list), do: sum_list_iter(list, 0)
  defp sum_list_iter([], _acc), do: []
  defp sum_list_iter([head | tail], acc), do: [head + acc | sum_list_iter(tail, head + acc)]

  def product_list(list), do: product_list_iter(list, 1)
  defp product_list_iter([], _acc), do: []
  defp product_list_iter([head | tail], acc), do: [head * acc | product_list_iter(tail, head * acc)]

  def fibonacci_list(n), do: fibonacci_list_iter(n, 0, 1)
  defp fibonacci_list_iter(0, f1, _f2), do: [f1]
  defp fibonacci_list_iter(n, f1, f2), do: [f1 | fibonacci_list_iter(n-1, f2, f1 + f2)]

  def factorial(n), do: factorial_iter(n, n)
  defp factorial_iter(1, acc), do: acc
  defp factorial_iter(n, acc), do: factorial_iter(n-1, acc * (n-1))

  def pascal_fac(n, k), do: div(factorial(n), factorial(k) * factorial(n-k))

  def pascal(n, 0), do: 1
  def pascal(n, n), do: 1
  def pascal(n, k), do: pascal(n-1, k-1) + pascal(n-1, k)
end

list = Enum.to_list(1..10)
IO.inspect Math.sum(list)
IO.inspect Math.product(list)
IO.inspect Math.fibonacci(5)
IO.inspect Math.sum_list(list)
IO.inspect Math.product_list(list)
IO.inspect Math.fibonacci_list(10)
IO.inspect Math.factorial(5)
IO.inspect Math.pascal(5, 2)
IO.inspect Math.pascal_fac(5, 2)
