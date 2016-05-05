Code.load_file("recursion_demo.exs")

ExUnit.start

defmodule CountdownTest do

    use ExUnit.Case
    import ExUnit.CaptureIO

    test "countdown and blastoff after 10" do
      assert capture_io(fn ->
        Countdown.countdown(10)
      end) == "10\n9\n8\n7\n6\n5\n4\n3\n2\n1\nblastoff\n" # looks kinda weird, run it in iex to see
    end

end
