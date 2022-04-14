defmodule Username do
  
  defguardp is_lower_case(codepoint) when codepoint in ?a..?z 
  defguardp is_under_score(codepoint) when codepoint == ?_
  def sanitize(username) do
    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss

    # Please implement the sanitize/1 function
    username
    |> Enum.map(fn char -> german_char_to_latin(char) end) 
    |> List.flatten
    |> Enum.filter(fn codepoint -> is_lower_case(codepoint) or is_under_score(codepoint)end)
  end
    

  #defguardp is_under_score(codepoint) when codepoint == ?_

  def german_char_to_latin(char) do
    case char do
      ?ä -> 'ae'
      ?ö -> 'oe'
      ?ü -> 'ue'
      ?ß -> 'ss'
      others -> others
    end
  end
end

