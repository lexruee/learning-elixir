defmodule BMI do
  def compute(weight_kg, height_m), do: weight_kg / :math.pow(height_m, 2)

  def read_weight do
    IO.gets("Please enter your weight in kg: ")
    |> String.trim
    |> Float.parse
  end

  def read_height do
    IO.gets("Please enter your height in meters: ")
    |> String.trim
    |> Float.parse
  end

  def print_result(bmi) do
    IO.puts("Your BMI is: #{bmi}")
  end

  def info(bmi) when bmi < 20, do: IO.puts("Eat more!")
  def info(bmi) when bmi > 25, do: IO.puts("Eat less!")
  def info(bmi), do: IO.puts("Weight is ok.")

  def interactive do
    {kg, _} = read_weight
    {meters, _} = read_height

    bmi = compute(kg, meters)
    print_result(bmi)
    info(bmi)
  end
end


BMI.interactive

