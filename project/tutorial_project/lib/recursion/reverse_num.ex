defmodule TutorialProject.Recursion.ReverseNum do

  # num = 123
  # acc - 0
  # loop:
  #     new_num = 123 / 10 = 12
  #     new_acc = 0 * 10 + 123 % 10 = 3
  #     repeat till num becomes 0
  # return acc

  def of_reverse(num, acc \\ 0)
  def of_reverse(0, acc), do: acc

  def of_reverse(num, acc) do
    new_num = div(num, 10)
    new_acc = acc * 10 + rem(num, 10)
    of_reverse(new_num, new_acc)
  end

end
