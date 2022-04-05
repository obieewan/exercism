defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  
  def score({x,y}) do
    x = abs x * abs x
    y = abs y * abs y

    cond do
      x + y > 100 -> 0
      x + y > 25 -> 1
      x + y > 1 -> 5
      true -> 10
    end
  end


  
  
end
