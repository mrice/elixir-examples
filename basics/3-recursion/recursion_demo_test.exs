Code.load_file("recursion_demo.exs")

ExUnit.start

defmodule CountdownTest do

    use ExUnit.Case
    import ExUnit.CaptureIO

    test "countdown and blastoff after 10" do
      assert capture_io(fn ->
        Countdown.countdown(10)
      end) == "t-minus 10\nt-minus 9\nt-minus 8\nt-minus 7\nt-minus 6\nt-minus 5\nt-minus 4\nt-minus 3\nt-minus 2\nt-minus 1\nblastoff\n" # looks kinda weird, run it in iex to see
    end

end
