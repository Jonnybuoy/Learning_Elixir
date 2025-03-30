defmodule TutorialProject.Recursion.Factorial do
  def of(1), do: 1
  def of(num), do: num * of(num - 1)

  def tail_rec_of(num, acc \\ 1)
  def tail_rec_of(1, acc), do: acc
  def tail_rec_of(num, acc) do
    tail_rec_of(num - 1, acc * num)
  end
end
