defmodule LanguageList do
  def new(), do: []
    # Please implement the new/0 function

  def add(list, language) do
    # Please implement the add/2 function
    [language | list]
  end

  def remove(list) do
    # Please implement the remove/1 function
    List.delete_at(list, 0)
  end

  def first(list) do
    # Please implement the first/1 function
    [head | tail] = list
    head
  end

  def count(list) do
    # Please implement the count/1 function
    Enum.count(list)
  end

  def exciting_list?(list) do
    # Please implement the exciting_list?/1 function
    !!Enum.find(list, fn language -> language == "Elixir" end)
  end
end
