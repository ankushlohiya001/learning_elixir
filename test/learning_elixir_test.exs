defmodule LearningElixirTest do
  use ExUnit.Case

  test "stack test" do
    infix = "A + B * C / (D - E)"

    assert postfix(infix) == ""
  end
end
