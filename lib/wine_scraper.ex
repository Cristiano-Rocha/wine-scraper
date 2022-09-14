defmodule WineScraper do
  use HTTPoison.Base
  @moduledoc """
  Documentation for `WineScraper`.
  """
  @api_wine_url "https://www.evino.com.br/api/product-list/slug/?perPage=99999&page=1"


  @doc """
  Hello world.

  ## Examples

      iex> WineScraper.hello()
      :world

  """
  def get_wines do
    %HTTPoison.Response{status_code: 200, body: body} = HTTPoison.get!(@api_wine_url)
    body |> Jason.decode!() |> Enum.map(& Map.take(&1, ["meta"]))

  end
end
