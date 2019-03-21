#!/usr/bin/env elixir

nums = 1..10 |> Enum.map(&Integer.to_string/1)
chunks = Enum.chunk_every(nums, 2)
IO.inspect chunks

flatted = Enum.flat_map chunks, &(&1)
IO.inspect flatted
