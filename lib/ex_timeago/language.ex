defmodule ExTimeago.Language do
  @behaviour Access

  @moduledoc """
  A struct representing a Language.
  """

  @enforce_keys []
  defstruct prefix_ago: nil,
            prefix_from_now: nil,
            suffix_ago: nil,
            suffix_from_now: nil,
            second: nil,
            seconds: nil,
            minute: nil,
            minutes: nil,
            hour: nil,
            hours: nil,
            day: nil,
            days: nil,
            week: nil,
            weeks: nil,
            month: nil,
            months: nil,
            year: nil,
            years: nil,
            word_separator: nil

  @type terms() :: Function.t() | String.t() | nil

  @typedoc "A Language"
  @type t() :: %__MODULE__{
          prefix_ago: terms(),
          prefix_from_now: terms(),
          suffix_ago: terms(),
          suffix_from_now: terms(),
          second: terms(),
          seconds: terms(),
          minute: terms(),
          minutes: terms(),
          hour: terms(),
          hours: terms(),
          day: terms(),
          days: terms(),
          week: terms(),
          weeks: terms(),
          month: terms(),
          months: terms(),
          year: terms(),
          years: terms(),
          word_separator: String.t() | nil
        }

  @impl true
  def fetch(struct, key) do
    Map.fetch(Map.from_struct(struct), key)
  end

  @impl true
  def get_and_update(struct, key, fun) do
    Map.get_and_update(Map.from_struct(struct), key, fun)
  end

  @impl true
  def pop(struct, key) do
    Map.pop(Map.from_struct(struct), key)
  end
end
