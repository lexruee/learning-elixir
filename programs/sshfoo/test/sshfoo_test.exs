defmodule SshfooTest do
  use ExUnit.Case
  doctest Sshfoo

  test "greets the world" do
    assert Sshfoo.hello() == :world
  end
end
