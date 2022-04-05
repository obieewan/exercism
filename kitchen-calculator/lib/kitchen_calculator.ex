defmodule KitchenCalculator do
  def get_volume({unit, volume}) do
    # Please implement the get_volume/1 function
    volume
  end

  def to_milliliter({unit_to_convert, volume}) do
    # Please implement the to_milliliter/1 functions
    case unit_to_convert do
      :milliliter -> {:milliliter, volume * 1}
      :cup -> {:milliliter, volume * 240}
      :fluid_ounce -> {:milliliter, volume * 30}
      :teaspoon -> {:milliliter, volume * 5}
      :tablespoon -> {:milliliter, volume * 15}
      _others -> :error
    end
  end

  def from_milliliter({:milliliter, volume}, unit_to_convert) do
    # Please implement the from_milliliter/2 functions
    case unit_to_convert do
      :milliliter -> {:milliliter, volume / 1}
      :cup -> {:cup, volume / 240}
      :fluid_ounce -> {:fluid_ounce, volume / 30}
      :teaspoon -> {:teaspoon, volume / 5}
      :tablespoon -> {:tablespoon, volume / 15}
      _others -> :error
    end
  end


  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    volume_pair
    |> to_milliliter
    |> from_milliliter(unit)
  end
end
