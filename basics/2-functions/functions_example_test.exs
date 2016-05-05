Code.load_file("functions_example.exs")

ExUnit.start

defmodule FunctionExampleTest do

  use ExUnit.Case

  test "2 + 2 = 4" do
    assert FunctionExample.add_two(2, 2) == 4
  end

  test "2 + fn = 6" do
    demo = fn (first) -> first + 2 end
    assert FunctionExample.add_two(2, demo.(2)) == 6
  end

end
