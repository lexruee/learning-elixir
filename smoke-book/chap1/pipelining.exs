#!/usr/bin/env elixir

defmodule Playground do
  def capitalize_words(title) do
    title
    |> String.split
    |> capitalize_all
    |> join_with_whitespace
  end

  def capitalize_all(words) do
    Enum.map(words, fn word -> String.capitalize(word) end)
  end

  def join_with_whitespace(words) do
    Enum.join(words, " ")
  end

  def main do
    title = "hello, world!"
    new_title = capitalize_words(title)
    IO.puts new_title
  end
end

Playground.main
