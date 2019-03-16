#!/usr/bin/env elixir

user_input = IO.gets "Write your ability score:\n"
{ability_score, _} = Integer.parse(user_input)

ability_modifier = (ability_score - 10) / 2
IO.puts "Your ability score is #{ability_modifier}"

