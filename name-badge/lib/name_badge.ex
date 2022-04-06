defmodule NameBadge do


  def print(id, name, department) do
    if department == nil do
      if  id == nil do
        "#{name} - OWNER"
      else 
        "[#{id}] - #{name} - OWNER"
      end
    else
      dept = String.upcase(department)
      if id == nil do
        "#{name} - #{dept}"
      else
        "[#{id}] - #{name} - #{dept}"
      end
    end
  end
      


  #def print(id \\ nil, name, department \\ nil) do
  #  # Please implement the print/3 function
  #  cond do
  #    id == nil and department == nil -> "#{name} - OWNER"
  #    
  #    department == nil -> "[#{id}] - #{name} - OWNER"

  #    id == nil -> dept = String.upcase(department)
  #      "#{name} - #{dept}"


  #    true -> dept = String.upcase(department)
  #      "[#{id}] - #{name} - #{dept}"
  #  end
  #end

end
