# this recusion demo stolen from O'Reilly's Learning Elixer
defmodule Countdown do

  def countdown(from) when from > 0 do
    IO.puts("t-minus #{from}")
    countdown(from-1)
  end

  def countdown(from) do
    IO.puts("blastoff")
  end

end
