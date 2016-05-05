Code.load_file("console_writer.exs")

ExUnit.start

defmodule ConsoleWriterTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  @doc """
  Tests the hello capabilities of ConsoleWriter.
  
  Demonstrates two things: (1) that we can test console output and (2) that
  the main function expects the parameters as an array.
  """
  test "says hello to the named user" do
    assert capture_io(fn ->
      ConsoleWriter.main(["--name","michael"])
    end) == "hello, michael\n"
  end

end
