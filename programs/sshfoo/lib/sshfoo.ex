defmodule Sshfoo do
  @moduledoc """
  Documentation for Sshfoo.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sshfoo.hello()
      :world

  """
  def hello do
    :world
  end

  def run do
    case SSHEx.connect(ip: '10.0.0.70', user: 'xander') do
      {:ok, conn} -> run_commands(conn)
      {:error, reason} -> IO.puts reason
    end
  end

  def run_commands(conn) do
    IO.puts SSHEx.cmd! conn, 'hostname'
    IO.puts SSHEx.cmd! conn, 'cat /etc/os-release'
  end

end
