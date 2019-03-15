#!/usr/bin/env elixir

defmodule StringList do
  def upcase([]), do: []
  def upcase([first | tail]), do: [String.upcase(first) | upcase(tail)]

  def test do
    words = ["hallo", "hello", "salut"]
    new_words = upcase(words)
    IO.inspect new_words
  end
end


StringList.test
