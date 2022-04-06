defmodule HighScore do

  @default_score 0

  def new() do
    # Please implement the new/0 function
    %{}
  end

  def add_player(scores, name, score \\ @default_score) do
    # Please implement the add_player/3 function
    scores
    |> Map.put(name, score)
  end


  def remove_player(scores, name) do
    # Please implement the remove_player/2 function
    scores
    |> Map.delete(name)
  end

  def reset_score(scores, name) do
    # Please implement the reset_score/2 function
    scores
    |> Map.put(name, @default_score)
  end

  def update_score(scores, name, score) do
    # Please implement the update_score/3 function
    scores
    |> Map.update(name, score, fn current_score -> current_score  + score end)
  end

  def get_players(scores) do
    # Please implement the get_players/1 function
    scores
    |> Map.keys
  end
end
