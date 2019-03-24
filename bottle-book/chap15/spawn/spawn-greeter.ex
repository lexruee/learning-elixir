defmodule SpawnGreeter do
  def greet do
    receive do
      {sender, msg} ->
        send sender, {:ok, "Hello, #{msg}!"}
        greet()
    end
  end

  def init, do: spawn(&greet/0)

  def send_msg(pid, msg), do: send pid, {self(), msg}

  def receive_msg do
    receive do
      {:ok, msg} ->
        IO.puts msg
    after 500 ->
        IO.puts "The greeter has gone away"
    end
  end
end

pid = SpawnGreeter.init
SpawnGreeter.send_msg(pid, "Alex")
SpawnGreeter.receive_msg
