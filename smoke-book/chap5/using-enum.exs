#!/usr/bin/env elixir

list = ["dogs", "cats", "flowers"]
IO.inspect Enum.each list, &(IO.puts String.upcase &1)
IO.inspect Enum.map list, &String.upcase/1
IO.inspect Enum.map list, &String.capitalize/1

list = [10, 5, 5, 10]
IO.inspect Enum.reduce list, 0, &+/2
IO.inspect Enum.reduce list, 1, &*/2
IO.inspect Enum.sum list 

list = ["a", "b", "c", "d"]
IO.inspect Enum.filter list, &(&1 > "b")
IO.inspect Enum.count list

list = ["a", "a", "b", "b", "b", "c"]
IO.inspect Enum.uniq list

list = ["c", "b", "d", "a"]
IO.inspect Enum.sort list
IO.inspect Enum.sort list, &(&1 > &2)

IO.inspect Enum.member?(["a", "b", "c"], "a")
IO.inspect "a" in ["a", "b", "c"]

IO.inspect Enum.join(["apples", "hot dogs", "flowers"], ", ")

upcase = fn {_key, value} -> String.upcase(value) end
IO.inspect Enum.map(%{name: "willy", last_name: "wonka"}, upcase)

medals = [
  %{medal: :gold, player: "Anna"},
  %{medal: :silver, player: "Joe"},
  %{medal: :gold, player: "Zoe"},
  %{medal: :bronze, player: "Anna"},
  %{medal: :silver, player: "Anderson"},
  %{medal: :silver, player: "Peter"}
]

grouped = Enum.group_by(medals, &(&1.medal), &(&1.player))
IO.inspect grouped

