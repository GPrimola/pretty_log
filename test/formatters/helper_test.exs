defmodule PrettyLog.Formatters.HelperTest do
  use ExUnit.Case

  alias PrettyLog.Formatters.Helper
  alias PrettyLog.TestHelper

  describe "format_timestamp/1" do
    test "should format to UTC" do
      timestamp = {{y, m, d}, {h, min, s, ms}} =
        TestHelper.to_erl_ms(NaiveDateTime.utc_now())

      y = String.pad_leading("#{y}", 4, "0")
      m = String.pad_leading("#{m}", 2, "0")
      d = String.pad_leading("#{d}", 2, "0")
      h = String.pad_leading("#{h}", 2, "0")
      min = String.pad_leading("#{min}", 2, "0")
      s = String.pad_leading("#{s}", 2, "0")
      ms = String.pad_leading("#{ms}", 2, "0")

      assert Helper.format_timestamp(timestamp)
        == "#{y}-#{m}-#{d}T#{h}:#{min}:#{s}.#{ms}Z"
    end
  end
end
