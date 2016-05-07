#simple pipelining example
# for an interesting analysis of pipelining, read https://hashrocket.com/blog/posts/elixir-with-love


defmodule Pipeline do

  def process_data(original) do
    add_one original
      |> add_two
      |> add_three
  end

  defp add_one(original) do
    original + 1
  end

  defp add_two(original) do
    original + 2
  end

  defp add_three(original) do
    original + 3
  end

end
