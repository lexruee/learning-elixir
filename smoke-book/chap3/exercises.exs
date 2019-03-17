#!/usr/bin/env elixir

# Exercise 1
defmodule Exercise1 do
  def spend_points(attributes) do
    attributes.strength * 2 + attributes.dexterity * 3 + attributes.intelligence * 3
  end
end
player_attrs = %{strength: 5, dexterity: 5, intelligence: 5}

IO.puts "Total spend points on the player's attributes:"
IO.inspect Exercise1.spend_points(player_attrs)

# Exercise 2
defmodule TicTacToe do
  def winner(board) do
    case check_players(board) do
      [[true, player]] -> {:winner, player}
      [] -> :no_winner
    end
  end

  def winner_moves do
    [[0, 1, 2], [3, 4, 5], [6, 7, 8], # rows
     [0, 3, 6], [1, 4, 7], [2, 5, 8], # columns
     [0, 4, 8], [2, 4, 6]]            # diagonals
  end

  def check_players(board) do
    [check_player(board, :x), check_player(board, :o)]
    |> Enum.filter(fn [winner, _player] -> winner end)
  end

  def check_player(board, player) do
    winner = (
      winner_moves()
      |> Enum.map(fn positions -> check_positions(board, player, positions) end)
      |> Enum.reduce(&(&1 or &2))
    )
    [winner, player]
  end

  def check_positions(board, player, positions) do
    positions 
    |> Enum.map(fn position -> elem(board, position) end)
    |> Enum.map(fn field -> field == player end)
    |> Enum.reduce(true, fn field, acc -> field and acc end)
  end
end

board1 = {:x, :o, :x,
          :o, :x, :o,
          :o, :o, :x}
IO.inspect TicTacToe.winner(board1)

board2 = {:x, :o, :x,
          :o, :x, :o,
          :o, :x, :o}
IO.inspect TicTacToe.winner(board2)

board3 = {:x, :o, :x,
          :o, :x, :o,
          :o, :o, :o}
IO.inspect TicTacToe.winner(board3)


# Exercise 3
defmodule Exercise3 do
  def calculate_income_tax(salary) do
    cond do
      salary <= 2000 -> 0
      salary <= 3000 -> salary * 5/100
      salary <= 6000 -> salary * 10/100
      salary > 6000 -> salary * 15/100
    end
  end
end

IO.puts "Income tax for 2000$:"
IO.puts Exercise3.calculate_income_tax(2000)

IO.puts "Income tax for 3000$:"
IO.puts Exercise3.calculate_income_tax(3000)

IO.puts "Income tax for 6000$:"
IO.puts Exercise3.calculate_income_tax(6000)

IO.puts "Income tax for 6001$:"
IO.puts Exercise3.calculate_income_tax(6001)

