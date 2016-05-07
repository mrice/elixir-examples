Code.load_file("simple_pipelining.exs")

ExUnit.start

defmodule PipelineTest do

  use ExUnit.Case

  test "should be 6 after the pipeline" do
    assert Pipeline.process_data == 6
  end

end
