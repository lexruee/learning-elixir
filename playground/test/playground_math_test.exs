defmodule Playground.MathTest do
  use ExUnit.Case
  alias Playground.Math, as: MyMath
  doctest MyMath

  describe "factors" do
    test "returns a list of factors" do
      assert MyMath.factors(2) == [2]
      assert MyMath.factors(4) == [2, 2]
      assert MyMath.factors(6) == [3, 2]
      assert MyMath.factors(12) == [3, 2, 2]
      assert MyMath.factors(18) == [3, 3, 2]
      assert MyMath.factors(16) == [2, 2, 2, 2]
    end
  end
end
