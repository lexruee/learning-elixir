#!/usr/bin/env elixir

# Exercise 4
defmodule IncomeTax do
  def tax(salary) do
    cond do
      salary <= 2000 -> 0
      salary <= 3000 -> salary * 5/100
      salary <= 6000 -> salary * 10/100
      salary > 6000 -> salary * 15/100
    end
  end
  def net_wage(salary) do
    salary - tax(salary)
  end
end

input = IO.gets "Please enter a salary: "
{salary, _} = Integer.parse(input)

income_tax = IncomeTax.tax(salary)
net_wage = IncomeTax.net_wage(salary)
IO.puts "The income tax for a salary of 2000$ is #{Float.to_char_list(income_tax, [decimals: 2])}"
IO.puts "The net wage is #{Float.to_char_list(net_wage, [decimals: 2])}"

