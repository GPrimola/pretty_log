defmodule PrettyLoggex do

  alias PrettyLoggex.Formatters.{JsonFormatter, KvFormatter}

  def json(level, message, timestamp, metadata) do
    JsonFormatter.format(level, message, timestamp, metadata)
  end

  def key_value(level, message, timestamp, metadata) do
    KvFormatter.format(level, message, timestamp, metadata)
  end

  def kv(level, message, timestamp, metadata),
    do: key_value(level, message, timestamp, metadata)
end
