#!/usr/bin/env elixir

list = Enum.map(["dogs", "cats", "flowers"], &String.upcase/1)
IO.inspect list
