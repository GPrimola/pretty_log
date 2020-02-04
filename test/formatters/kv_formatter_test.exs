defmodule PrettyLoggex.Formatters.KvFormatterTest do
  use ExUnit.Case

  alias PrettyLoggex.Formatters.KvFormatter
  alias PrettyLoggex.TestHelper

  describe "format/4" do
    test "should return a json" do
      timestamp = TestHelper.to_erl_ms(NaiveDateTime.utc_now())
      formatted_message = KvFormatter.format(:info, "log", timestamp, [])

      assert is_binary(formatted_message)
      assert formatted_message =~ "level="
      assert formatted_message =~ "message="
      assert formatted_message =~ "timestamp="
    end

    test "should return a json with metadata" do
      timestamp = TestHelper.to_erl_ms(NaiveDateTime.utc_now())
      formatted_message = KvFormatter.format(:warn, "log", timestamp, foo: :bar)

      assert is_binary(formatted_message)
      assert formatted_message =~ "level="
      assert formatted_message =~ "message=\"log\""
      assert formatted_message =~ "timestamp="
      assert formatted_message =~ "foo=bar"
    end
  end
end
