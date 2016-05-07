Code.load_file("simple_examples.exs")

ExUnit.start

defmodule ListMapExamplesTest do

  use ExUnit.Case

  test "test add two lists" do
    # trivial list addition
    assert ListMapExamples.add_kw_list([{:a, 1}], [{:b, 2}]) == [{:a, 1}, {:b, 2}]
  end

  test "demo keyword list as argument parameter" do
    # order matters a lot, but sometimes nice to have named parameters (matching makes this work, btw)
    assert ListMapExamples.say_hello first_name: "michael", last_name: "rice" == "Hello, michael rice"
  end

  test "demo map version of say_hello" do
    data = %{:lname => "rice", :fname => "michael"} # it's a map, so order doesn't matter like it does with lists
    assert ListMapExamples.say_hello(data) == "Hello, michael rice"
  end

end
