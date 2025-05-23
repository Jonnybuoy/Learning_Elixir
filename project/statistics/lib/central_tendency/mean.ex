defmodule Statistics.CentralTendency.Mean do

  alias Statistics.{Errors, Validators}

  def population_mean([]), do: Errors.invalid_data_type()

  def population_mean(nums) when is_list(nums) do
    nums
    |> Validators.validate_num_list()
    |> calc_population_mean()
  end

  def population_mean(_), do: Errors.invalid_data_type()

  def calc_population_mean({false, _}), do: Errors.invalid_data_type()

  def calc_population_mean({true, nums}) do
    nums
    |> Enum.sum()
    |> mean(Enum.count(nums))
  end

  def mean(sigma, count), do: sigma / count

end
