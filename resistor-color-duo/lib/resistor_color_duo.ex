defmodule ResistorColorDuo do
  @doc """
  Calculate a resistance value from two colors
  """
  @spec value(colors :: [atom]) :: integer

  @band_colors %{
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8, 
    white: 9,
  }
  

  def value(colors) do
    colors
    |> Enum.take(2)
    |> Enum.reduce([], fn key, acc -> 
      value = Map.get(@band_colors, key)
      [value | acc]
    end)
    |> Enum.reverse()
    |> Enum.join()
    |> String.to_integer
  end



end
