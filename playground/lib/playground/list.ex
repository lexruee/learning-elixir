defmodule Playground.List do
  def empty?([]), do: true
  def empty?(list) when is_list(list), do: false
  def empty?(_), do: raise ArgumentError, message: "The argument value is not a list."
end
