defmodule LearningElixirTest do
  use ExUnit.Case

  test "stack test" do
    st = %Stack{}
    st = Stack.push(st, 34)
    st = Stack.push(st, 37)
    assert length(st.list) == 2
    {st, top} = Stack.pop(st)
    assert top == 37
    assert length(st.list) == 1
    {st, _top} = Stack.pop(st)
    assert Stack.empty?(st)
  end
end
