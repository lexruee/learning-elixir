defmodule SpawnBasic do
  def greet, do: IO.puts "greet"

  def spawn_greet, do: spawn(SpawnBasic, :greet, [])
end

