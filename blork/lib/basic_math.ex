defmodule BasicMath do
  def add(addend_1, addend_2), do: addend_1 + addend_2

  def subtract(minuend, subtrahend), do: minuend - subtrahend

  def multiply(multiplier, multiplicand), do: multiplier * multiplicand

  def divide(dividend, divisor), do: dividend / divisor

  def round_up(value), do: Float.ceil(value, 2)

end
