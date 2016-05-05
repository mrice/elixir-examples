
defmodule SamplePost do
  @derive [Poison.Encoder]
  defstruct [:userId, :id, :title, :body]
end

defmodule HttpClient do
  def fetch do
    #TODO isn't there a more functional way to do this?
    response = HTTPoison.get("http://jsonplaceholder.typicode.com/posts/1")
    body = elem(response, 1).body
    Poison.decode!(body)
  end
end
