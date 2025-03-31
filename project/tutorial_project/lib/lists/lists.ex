defmodule TutorialProject.Lists do
  @moduledoc """

  Function Summary:

  1. sum
  2. sum_simple
  3. sum_tail_rec
  """

  @doc """
  Returns the sum of numbers in a list
  """
  @spec sum(list(number())) :: number()
  def sum(nums), do: sum_tail_rec(nums)

  @spec sum_simple(list(number())) :: number()
  def sum_simple([]), do: 0
  def sum_simple([h | t]), do: h + sum_simple(t)

  @spec sum_tail_rec(list(number()), integer()) :: number()
  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc
  def sum_tail_rec([h | t], acc), do: sum_tail_rec(t, acc + h)


  #----------------Reverse-------------------#
  @spec reverse(list[any()], [any()]) :: [any()]
  def reverse(elements, acc \\ [])
  def reverse([], acc), do: acc
  def reverse([h | t], acc), do: reverse(t, [h | acc])


  #-----------------Map-----------------------#
  @spec map([any()], (any() -> any()), [any()]) :: [any()]
  def map(elements, func, acc \\ [])
  def map([], _, acc), do: acc |> reverse()
  def map([h | t], func, acc), do: map(t, func, [func.(h) | acc])

 #-----------------Concatenation----------------------#
 @spec concat([any()], [any()]) :: [any()]
 def concat(src, dest), do: concat_func(src |> reverse(), dest)

 defp concat_func([], dest), do: dest # private function (defp)
 defp concat_func([h | t], dest), do: concat_func(t, [h | dest])

 #------------------Flat Map---------------------------#
 def flat_map(elements, func, acc \\ [])
 def flat_map([], _, acc), do: acc
 def flat_map([h | t], func, acc), do: flat_map(t, func, concat(acc, func.(h)))

end
