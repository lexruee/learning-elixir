#!/usr/bin/env elixir

abilities = %{strength: 16, dexterity: 12, intelligence: 10}
%{strength: strength_value} = abilities
IO.inspect("strength: #{strength_value}")

IO.inspect(%{} = abilities)
IO.inspect(%{strength: strength_value} = abilities)
