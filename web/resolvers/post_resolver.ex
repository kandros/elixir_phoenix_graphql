defmodule ElixirPhoenixGraphql.PostResolver do

  def all(_args, _info) do
    {:ok, get_posts()}
  end

  defp get_posts do
    [
     %{
        id: 1,
        title: "first title",
        text: "first text"
      },
      %{
        id: 1,
        title: "second title",
        text: "second text"
      },
      %{
        id: 1,
        title: "third title",
        text: "third text"
      }
    ]
  end
end
