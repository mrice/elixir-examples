Code.load_file("functions_example.exs")

ExUnit.start

defmodule FunctionExampleTest do

  use ExUnit.Case

  # super simple example. adds two numbers
  test "2 + 2 = 4" do
    assert FunctionExample.add(2, 2) == 4
  end

  # demonstrates how functions are "first class citizens" in Elixir in that
  # they can be passed around as parameters to functions
  test "2 + fn = 6" do
    demo = fn (first) -> first + 2 end  # anonymous function to add two to whatever number
    assert FunctionExample.add(2, demo.(2)) == 6
  end

end
