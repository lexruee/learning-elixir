#!/usr/bin/env elixir

list = ["dogs", "hot dogs", "bananas"]
new_list = Enum.map(list, &String.upcase/1)
IO.inspect new_list
