defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
    name
    |> String.trim
    |> String.first
  
  end

  def initial(name) do
    # Please implement the initial/1 function
    name_initial =
      name
      |> String.upcase
      |> first_letter
    "#{name_initial}."

  end

  def initials(full_name) do
    # Please implement the initials/1 function
    [first, last] =
    full_name
    |> String.split

    "#{initial(first)} #{initial(last)}"
  end

  def pair(full_name1, full_name2) do
    initials1 = initials(full_name1)
    initials2 = initials(full_name2)
    
               """
                    ******       ******
                  **      **   **      **
                **         ** **         **
               **            *            **
               **                         **
               **     #{initials1}  +  #{initials2}     **
                **                       **
                  **                   **
                    **               **
                      **           **
                        **       **
                          **   **
                            ***
                             *
               """
  end
end
