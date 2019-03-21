#!/usr/bin/env elixir

defmodule Playground do
  def factorial_generator do
    gen = fn next ->
      fn 
        0 -> 1
        x when x > 0 -> x * next.(next).(x-1)
      end	
    end
    gen.(gen)
  end
end


fun_gen = Playground.factorial_generator()
IO.inspect fun_gen.(0)
IO.inspect fun_gen.(1)
IO.inspect fun_gen.(5)
