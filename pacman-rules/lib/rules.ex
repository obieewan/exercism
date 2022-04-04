defmodule Rules do
  def eat_ghost?(_power_pellet_active = true, _touching_ghost = true), do: true
    # Please implement the eat_ghost?/2 function

  def eat_ghost?(_power_pellet_active = false, _touching_ghost = true), do: false

  def eat_ghost?(_power_pellet_active, _touching_ghost), do: false

##############################################

  def score?(_touching_power_pellet = true, _touching_dot = false), do: true
    # Please implement the score?/2 function
  def score?(_touching_power_pellet = false, _touching_dot = true), do: true

  def score?(_touching_power_pellet, _touching_dot ), do: false

  ############################################
 
  def lose?(_power_pellet_active = true, _touching_ghost = true), do: false
    # Please implement the lose?/2 function
  def lose?(_power_pellet_active, _touching_ghost = true), do: true
  def lose?(_power_pellet_active, _touching_ghost), do: false 

  ############################################
  
    # Please implement the win?/3 function
  
  def win?(_has_eaten_all_dots = true, _power_pellet_active = true, _touching_ghost = true), do: true
  def win?(_has_eaten_all_dots = true ,_power_pellet_active = false , _touching_ghost = true), do: false
  def win?(_has_eaten_all_dots = true, _power_pellet_active, _touching_ghost), do: true
end
