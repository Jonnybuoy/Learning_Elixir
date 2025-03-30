defmodule TutorialProject.Recursion.PrintDigits do
  # Base Case
  # Can also be shortened as:
  # def upto(0), do: 0
  def upto(0) do
    # return
    0
  end

  def upto(nums) do
    IO.puts(nums) # 3, 2, 1, 0
    upto(nums - 1)
  end

end
