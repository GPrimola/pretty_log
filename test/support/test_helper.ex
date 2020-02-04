defmodule PrettyLoggex.TestHelper do
  @spec to_erl_ms(NaiveDateTime.t()) ::
          {{year :: integer(), month :: integer(), day :: integer},
           {hour :: integer(), minute :: integer(), second :: integer(), microsecond :: integer}}
  def to_erl_ms(naive_dt) do
    %{
      year: y,
      month: m,
      day: d,
      hour: h,
      minute: min,
      second: s,
      microsecond: microsecond
    } = naive_dt

    {ms, _} = Integer.parse("#{elem(microsecond, 0) / 1000}")

    {{y, m, d}, {h, min, s, ms}}
  end
end
