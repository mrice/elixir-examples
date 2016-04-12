defmodule ConsoleWriter do
  @moduledoc """
  ConsoleWriter example
  """

  @doc """
  Says hello to a name on the command line.

  Returns :ok

  The main function accepts command line parameters. It expects
    --name=<name>
  so it can say hello to you.
  """
  def main(args) do
    say_hello(parse_args(args))
  end

  defp say_hello(options) do
    IO.puts "hello, #{options[:name]}"
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args, switches: [name: :string])
    options
  end
end
