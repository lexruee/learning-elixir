#!/usr/bin/env elixir

IO.inspect for item <- ["dogs", "cats", "flowers"], do: String.capitalize(item)
IO.inspect for a <- ["Willy", "Anna"], b <- ["Math", "English"], do: {a, b}

parseds = for i <- ["10", "hot dogs", "20" ], do: Integer.parse(i)
IO.inspect for {num, _} <- parseds, do: num

IO.inspect for n <- [1, 2, 3, 4, 5, 6, 7], n > 3, do: n
