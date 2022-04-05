defmodule LogLevel do
  def to_label(level, legacy?) when is_integer(level) do
    # Please implement the to_label/2 function
    #cond do
    #  level == 0 and not legacy? -> :trace
    #  level == 1 -> :debug
    #  level == 2 -> :info
    #  level == 3 -> :warning
    #  level == 4 -> :error
    #  level == 5 and not legacy? -> :fatal
    #  true -> :unknown
    #end
    #
    case level do
      0 when legacy? == false -> :trace
      1 -> :debug
      2 -> :info
      3 -> :warning
      4 -> :error
      5 when legacy? == false -> :fatal
      _others -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
    label =  to_label(level, legacy?)
    #when using cond
    #cond do
    #  label == :error -> :ops
    #  label == :fatal -> :ops
    #  label == :unknown and legacy?-> :dev1
    #  label == :unknown and not legacy? -> :dev2
    #  true -> false
    #end

    case label do
      :error -> :ops
      :fatal -> :ops
      :unknown when legacy? == true -> :dev1
      :unknown -> :dev2
      _others -> false
    end
  end
end
