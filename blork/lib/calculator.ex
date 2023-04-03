defmodule Calculator do
  def find_percentage_of_value(percentage, value) do
    # value * (percentage / 100)

    # dec_percent = BasicMath.divide(percentage, 100)
    # BasicMath.multiply(dec_percent, value)

    percentage
    |> BasicMath.divide(100) # note: percentage is already being passed in as the first arg
    |> BasicMath.multiply(value) # note: multiplier arg is already being passed in asfrom the line before
    |> BasicMath.round_up
  end

  def find_distance_travelled(speed, time) do
    # speed = distance / time
    speed
    |> BasicMath.divide(time)
    |> BasicMath.round_up
  end
end
