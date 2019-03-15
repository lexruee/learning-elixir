#!/usr/bin/env elixir

ten = 10
IO.inspect ten

sentence = "I don't like xyz."
IO.inspect sentence

atom = :hello_world
IO.inspect atom

a_boolean = true
IO.inspect a_boolean

a_float = 10.5
IO.inspect a_float

a_tuple = {:ok, "Hello"}
IO.inspect a_tuple

a_list = [1, 2, 3, 4]
IO.inspect a_list

a_mixed_list = [1, :atom, "String", 10.5, true]
IO.inspect a_mixed_list

a_map = %{id: 10, name: "Anna"}
IO.inspect a_map

a_nil = nil
IO.inspect a_nil
