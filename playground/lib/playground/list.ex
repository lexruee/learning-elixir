defmodule Playground.List do
  def empty?([]), do: true
  def empty?([_ | _]), do: false
  def empty?(_), do: raise ArgumentError, message: "The argument value is not a list."
end
