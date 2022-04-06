defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet', or an error if 'planet' is not a planet.
  """
  @spec age_on(planet, pos_integer) :: {:ok, float} | {:error, String.t()}


  @planet_earth_years %{
                          mercury: 0.2408467, 
                          venus: 0.61519726,
                          earth: 1,
                          mars: 1.8808158,
                          jupiter: 11.862615,
                          saturn: 29.447498,
                          uranus: 84.016846,
                          neptune: 164.79132,
                        }

 
  def age_on(planet, seconds) do
  
    case is_planet?(planet) do
      true ->     planet_earth_years = get_planet_earth_years(planet)
                  earth_years = seconds_to_earth_year(seconds)
               {:ok, earth_years / planet_earth_years}

      false -> {:error, "not a planet"}
    end
  end

    
  #gets planet's earth years
  defp get_planet_earth_years(planet) do
    Map.get(@planet_earth_years, planet)
  end

  defp is_planet?(planet) do
    Map.has_key?(@planet_earth_years, planet)
  end
  
  defp seconds_to_earth_year(seconds) do
    seconds / 31557600
  end

  defp earth_days_to_earth_years(days) do
    days / 365.25
  end

    
end
