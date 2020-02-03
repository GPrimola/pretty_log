defmodule PrettyLoggex.Formatters.KvFormatter do
  import PrettyLoggex.Formatters.Helper

  def format(level, message, timestamp, metadata) do
    [timestamp: format_timestamp(timestamp), level: level]
    |> Keyword.merge(metadata)
    |> Keyword.merge([message: message])
    |> Enum.map(&to_kv/1)
    |> Enum.join(" ")
    |> String.to_charlist()
    |> List.insert_at(-1, "\n\n")
    |> List.to_string()
  end

  defp to_kv({key, value})
    when is_atom(value) or
        is_list(value) or
        is_integer(value) or
        is_float(value), do: "#{key}=#{value}"

  defp to_kv({key, value}), do: "#{key}=#{inspect(value)}"

end
