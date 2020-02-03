defmodule PrettyLog.Formatters.Helper do

  def format_timestamp({date, {h, m, s, ms}}) do
    miliseconds = {ms*1000, 3}
    {date, {h, m, s}}
    |> NaiveDateTime.from_erl!(miliseconds)
    |> NaiveDateTime.to_iso8601()
    |> String.to_charlist()
    |> List.insert_at(-1, "Z")
    |> List.to_string()
  end

end
