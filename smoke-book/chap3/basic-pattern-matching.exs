#!/usr/bin/env elixir

# Matching values / Binding values to variables
IO.inspect(1 = 1)
IO.inspect(x = 2)
IO.inspect(2 = x)
IO.inspect(y = 3)
IO.inspect(y = x)
IO.inspect(x = y)
IO.inspect(2 = y)

z = 10
IO.inspect(^z = 10)

# Matching Strings
"Authentication: " <> credentials = "Authentication: Basic dXNlcjpwYXNz"
IO.inspect credentials

"John " <> last_name  = "John Doe"
IO.inspect last_name

"eoD " <> first_name  = String.reverse("John Doe")
IO.inspect String.reverse(first_name)

# Matching Tuples
{a, b} = {:ok, 42}
IO.inspect("a: #{a}, b: #{b}")

{a, b, c} = {4, 5, 6}
IO.inspect("a: #{a}, b: #{b}, c: #{c}")

process_life_and_everything = fn -> {:ok, 202} end

{status, answer} = process_life_and_everything.()
IO.inspect("status: #{status}, answer: #{answer}")
