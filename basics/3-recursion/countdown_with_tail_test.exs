Code.load_file("countdown_with_tail.exs")

ExUnit.start

defmodule TailCountdownTest do

    use ExUnit.Case
    import ExUnit.CaptureIO

    test "use recursion and tail to countdown" do
      assert capture_io(fn ->
        TailCountdown.countdown(["three","two",:one])
      end) == "three\ntwo\none\ndone\n" # looks kinda weird, run it in iex to see
    end

end
