defmodule FunctionExample do
  @moduledoc """
  Contains a number of function examples
  """

  @doc """
  Adds two things together.
  Returns the result of the addiiton.

  ## examples

    iex> FunctionExample.add(2, 2)
    4

    iex> FunctionExample.add(2, (fn(n)->2+n end).(2))
    6

  """
  def add(first, second) do
    first + second
  end

end
