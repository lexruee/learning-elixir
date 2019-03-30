defmodule Playground.Math do
  @doc """
  Computes the prime factors of the given number.

  ## Examples

      iex> Playground.Math.factors(8616460799)
      [96079, 89681]
  """
  def factors(n), do: factors(n, 2, [])
  def factors(1, _, acc), do: acc
  def factors(n, k, acc) when n < k*k, do: [n | acc]
  def factors(n, k, acc) when rem(n, k) == 0, do: factors(div(n,k), k, [k | acc])
  def factors(n, k, acc), do: factors(n, k+1, acc)
end
