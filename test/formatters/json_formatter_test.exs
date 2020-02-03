defmodule PrettyLog.Formatters.JsonFormatterTest do
  use ExUnit.Case

  alias PrettyLog.Formatters.JsonFormatter
  alias PrettyLog.TestHelper

  describe "format/4" do
    test "should return a json" do
      timestamp = TestHelper.to_erl_ms(NaiveDateTime.utc_now())
      formatted_message =
        JsonFormatter.format(:info, "message", timestamp, [])

      assert is_binary(formatted_message)
      assert %{
        level: _,
        message: _,
        timestamp: _
        } = Jason.decode!(formatted_message, keys: :atoms)
    end

    test "should return a json with metadata" do
      timestamp = TestHelper.to_erl_ms(NaiveDateTime.utc_now())
      formatted_message =
        JsonFormatter.format(:warn, "message", timestamp, [foo: :bar])

      assert is_binary(formatted_message)
      assert %{
        level: _,
        message: _,
        timestamp: _,
        foo: "bar"
        } = Jason.decode!(formatted_message, keys: :atoms)
    end
  end
end
