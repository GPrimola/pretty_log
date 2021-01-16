![Code coverage](https://codecov.io/gh/sumup/foundry/branch/master/graph/badge.svg?token=<codecov-token>)
[![License](https://img.shields.io/badge/license--lightgrey.svg)](https://github.com/sumup-oss/<repo-name>/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

<div align="center">

# PrettyLoggex

PrettyLoggex is a customization for [Elixir.Logger](https://hexdocs.pm/logger/Logger.html) that contains two formatters:

- [JsonFormatter](#jsonformatter)
- [KvFormatter](#kvformatter)

</div>

> **TLDR;**
>
> Add `pretty_loggex` to your list of dependencies in `mix.exs`:
>
> ```elixir
> def deps do
>   [
>     {:pretty_loggex, git: "https://github.com/gprimola/pretty_loggex", tag: "1.0.1"}
>   ]
> end
> ```
> - To output the logs in [JSON format](#jsonformatter):
>
> ```elixir
> config :logger, :console,
>   format: {PrettyLoggex, :json}
> ```
>
> - To output the logs in [Key=Value format](#kvformatter):
>
> ```elixir
> config :logger, :console,
>   format: {PrettyLoggex, :key_value}
>
> # or
>
> config :logger, :console,
>   format: {PrettyLoggex, :kv}
> ```

##### Table of contents

- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [About SumUp](#about-sumup)



## Installation

Add `pretty_loggex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pretty_loggex, git: "https://github.com/gprimola/pretty_loggex", tag: "1.0.1"}
  ]
end
```



## Usage

- To output the logs in [JSON format](#jsonformatter):

```elixir
config :logger, :console,
  format: {PrettyLoggex, :json}
```

- To output the logs in [Key=Value format](#kvformatter):

```elixir
config :logger, :console,
  format: {PrettyLoggex, :key_value}

# or

config :logger, :console,
  format: {PrettyLoggex, :kv}
```

You can use any logger backend you want.
In the examples above it was used the standard `:console` backend.


## Examples

### JsonFormatter

Formats the Logger output to JSON format.
Example:

```

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"debug","line":5,"message":"This is a debug message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.974Z"}

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"info","line":6,"message":"This is a info message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.975Z"}

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"warn","line":7,"message":"This is a warn message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.975Z"}

{"application":"pretty_loggex","file":"lib/pretty_loggex.ex","function":"start/2","level":"error","line":8,"message":"This is a error message","module":"Elixir.PrettyLoggex","pid":"#PID<0.180.0>","timestamp":"2020-02-04T16:44:48.975Z"}
```

### KvFormatter

Formats the Logger output to Key=Value format.
Example:

```

timestamp="2020-02-04T16:47:06.790Z" level=debug pid=#PID<0.204.0> line=5 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a debug message"

timestamp="2020-02-04T16:47:06.791Z" level=info pid=#PID<0.204.0> line=6 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a info message"

timestamp="2020-02-04T16:47:06.791Z" level=warn pid=#PID<0.204.0> line=7 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a warn message"

timestamp="2020-02-04T16:47:06.791Z" level=error pid=#PID<0.204.0> line=8 function="start/2" module=Elixir.PrettyLoggex file="lib/pretty_loggex.ex" application=pretty_loggex message="This is a error message"
```



## Code of conduct (CoC)

We want to foster an inclusive and friendly community around our Open Source efforts. Like all SumUp Open Source projects, this project follows the Contributor Covenant Code of Conduct. Please, [read it and follow it](CODE_OF_CONDUCT.md).

If you feel another member of the community violated our CoC or you are experiencing problems participating in our community because of another individual's behavior, please get in touch with our maintainers. We will enforce the CoC.

### Maintainers

- [Giorgio Torres](mailto:giorgio.torres@sumup.com)


## About SumUp

![SumUp logo](https://raw.githubusercontent.com/sumup-oss/assets/master/sumup-logo.svg?sanitize=true)

[SumUp](https://sumup.com) is a mobile-point of sale provider. It is our mission to make easy and fast card payments a reality across the *entire* world. You can pay with SumUp in more than 30 countries, already. Our engineers work in Berlin, Cologne, Sofia, and Sāo Paulo. They write code in JavaScript, Swift, Ruby, Go, Java, Erlang, Elixir, and more.

Want to come work with us? [Head to our careers page](https://sumup.com/careers) to find out more.
