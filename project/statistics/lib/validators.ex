defmodule Statistics.Validators do

  alias Statistics.Errors

  @spec validate_num_list([number()]) :: {boolean(), [number()]} | {atom(), String.t()}
  def validate_num_list(nums) do
    {Enum.all?(nums, fn el -> is_number(el) end), nums}
  end

  def validate_num_list(_), do: Errors.invalid_data_type()

end
