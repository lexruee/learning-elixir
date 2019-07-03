defmodule Cli do
  def compute(weight_kg, height_m), do: weight_kg / :math.pow(height_m, 2)

  def info(bmi) when bmi < 20, do: IO.puts("Eat more!")
  def info(bmi) when bmi > 25, do: IO.puts("Eat less!")
  def info(_bmi), do: IO.puts("Weight is ok.")

  def print_result(bmi) do
    IO.puts("Your BMI is: #{bmi}")
  end

  def run do
   res = OptionParser.parse System.argv, strict: [ weight: :float, height: :float]
   {[weight: kg, height: meters], _, _} = res
   bmi = compute(kg, meters)
   print_result(bmi)
   info(bmi)
  end
end


Cli.run