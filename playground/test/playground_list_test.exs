defmodule Playground.ListTest do
  use ExUnit.Case
  alias Playground.List, as: MyList
  doctest MyList

  describe "empty?" do
    test "if empty list is empty" do
      assert MyList.empty?([]) == true
    end

    test "if non empty list is not empty" do
      assert MyList.empty?([:a]) == false
    end

    test "if an exception is raised when the passed argument is invalid" do
      assert_raise ArgumentError, "The argument value is not a list.", fn ->
        MyList.empty?(:a)
      end
    end
  end

end
