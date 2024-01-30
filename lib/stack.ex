defmodule Stack do
  defstruct list: []

  def create() do
    %Stack{}
  end

  def push(stack, val) do
    %Stack{stack | list: [val] ++ stack.list}
  end

  def top(stack) do
    hd(stack.list)
  end

  def empty?(stack) do
    length(stack.list) == 0
  end

  def pop(stack) do
    head = hd(stack.list)
    {%Stack{stack | list: tl(stack.list)}, head}
  end
end
