defmodule TailCountdown do

  def countdown(list) when length(list) > 0 do
    display_head list
    countdown(tl(list))
  end

  def countdown(list) do
    IO.puts("done")
  end

  defp display_head(list) do
      head = hd(list)
      IO.puts("#{head}")
  end

end
