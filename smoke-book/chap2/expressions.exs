#!/usr/bin/env elixir

boolean_expression1 = true || false
IO.inspect boolean_expression1

boolean_expression2 = true or false
IO.inspect boolean_expression2

boolean_expression3 = 1 || false
IO.inspect boolean_expression3

boolean_expression4 = 0 || false
IO.inspect boolean_expression4

boolean_expression5 = true && 1
IO.inspect boolean_expression5

integer_expression1 = 1 + 2
IO.inspect integer_expression1

integer_expression2 = Kernel.+(1, 2)
IO.inspect integer_expression2

integer_expression3 = 1 * 2
IO.inspect integer_expression3

integer_expression4 = Kernel.*(1, 2)
IO.inspect integer_expression4

list_expression1 = [1,2] ++ [3,4]
IO.inspect list_expression1

list_expression2 = Kernel.++([1,2],[3,4])
IO.inspect list_expression2

string_expression1 = "Hello" <> " " <> "World" <> "!"
IO.inspect string_expression1

string_expression2 = Kernel.<>(Kernel.<>(Kernel.<>("Hello", " "),"World"),"!")
IO.inspect string_expression2

fun_expression1 = fn -> "Hello World!" end
IO.inspect(fun_expression1)
IO.inspect(fun_expression1.())

fun_expression2 = (fn -> "Hello World!" end).()
IO.inspect(fun_expression2)

fun_expression3 = (fn (name) -> "Hello #{name}" end).("Alex")
IO.inspect(fun_expression3)
