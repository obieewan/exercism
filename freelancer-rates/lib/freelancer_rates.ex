defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    before_discount * percent_discount(discount)
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    #monthly_billable(hourly_rate) * apply_discount(discount)
    apply_discount(monthly_billable(hourly_rate), discount)
    |> Float.ceil
    |> trunc
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    actual_budget(budget, discount) / daily_work_rate(hourly_rate)
    |> Float.floor(1)
  end

  defp actual_budget(budget, discount) do
    budget / percent_discount(discount)
  end

  
  defp daily_work_rate(hourly_rate), do: 8 * hourly_rate

  defp monthly_billable(hourly_rate) do
    8.0 * 22 * hourly_rate
  end

  defp budget_margin(budget, margin) do
    budget * percent_margin(margin)
  end

  defp percent_margin(discount) do
    (discount + 100) / 100
  end

  defp percent_discount(discount) do
    (100 - discount)/100
  end




end
