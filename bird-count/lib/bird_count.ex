defmodule BirdCount do

  def today([]), do: nil
  def today(list) do
    # Please implement the today/1 function
    [head | _tail] = list 
    head
  end

  
  # Please implement the increment_day_count/1 function
  def increment_day_count([]), do: [1]

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end


    

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?(list) do
   # Please implement the has_day_without_birds?/1 function
    list
    |> Enum.any?(fn day -> day == 0 end)
  end

  # Please implement the total/1 function


  def total([]), do: 0
  def total(list), do: total(list, 0)


  def total([], accumulator), do: accumulator
  def total([head | tail], accumulator) do
    total(tail, head + accumulator)
  end

    # Please implement the busy_days/1 function
  def busy_days(list) do
    list
    |> Enum.count(fn x -> x >= 5 end)
  end
end
