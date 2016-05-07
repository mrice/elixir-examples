defmodule ListMapExamples do

  def add_kw_list(one, two) do
    one ++ two
  end

  def say_hello([{:first_name, first_name}, {:last_name, last_name}]) do
    "Hello, #{first_name} #{last_name}"
  end

  def say_hello(data) do
    "Hello, #{data[:fname]} #{data[:lname]}"
  end

end
