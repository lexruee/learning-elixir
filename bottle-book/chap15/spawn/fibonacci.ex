defmodule Fibonacci do
  defmodule Server do
    def of(n), do: _of(n, {0, 1})
    defp _of(0, {_f1, f2}), do: f2
    defp _of(n, {f1, f2}), do: _of(n-1, {f2, f1 + f2})

    def init, do: spawn(Fibonacci.Server, :loop, [%{}])

    def loop(state) do
      receive do
        {sender, {:get, x}} -> 
          new_state = next_state(x, state)
          send sender, {:ok, {x, lookup(new_state, x)}}
        loop(new_state)
      end
    end

    defp next_state(x, state) do
      case state[x] do
        nil -> 
          Map.put(state, x, of(x))
        _ -> state
      end
    end

    defp lookup(state, x), do: Map.get(state, x)
  end
end

server = Fibonacci.Server.init
Enum.each(0..10, fn num ->
  send server, {self(), {:get, num}}
  receive do
    {:ok, {num, fib}} -> 
      IO.puts "Fibonacci.of(#{num})=#{fib}"
  end
end)
