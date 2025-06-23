defmodule ExTimeago.Formatter do
  use TypedEctoSchema
  import Ecto.Changeset

  @moduledoc """
  locale: undefined, // string
  localeMatcher?: 'best fit', // 'lookup' | 'best fit',
  numberingSystem?: 'latn' // Intl$NumberingSystem such as 'arab', 'deva', 'hebr' etc.
  style?: 'long', // 'long' | 'short' | 'narrow',
  numeric?: 'auto', //  'always' | 'auto', Using 'auto` will convert "1 day ago" to "yesterday" etc.
  """

  @primary_key false
  schema "formatter" do
    field(:locale, :string)

    field(:locale_matcher, Ecto.Enum,
      values: [best_fit: "best fit", lookup: "lookup"],
      default: :best_fit
    )

    field(:numbering_system, :string, default: "latn")

    field(:style, Ecto.Enum,
      values: [long: "long", short: "short", narrow: "narrow"],
      default: :long
    )

    field(:numeric, Ecto.Enum, values: [auto: "auto", always: "always"], default: :auto)
  end

  @keys ~w(locale locale_matcher numbering_system style numeric)a

  def default_formatter(opts \\ []) do
    %__MODULE__{} |> handle_opts(opts)
  end

  defp handle_opts(struct, opts) do
    attr = Enum.into(opts, %{})

    cast(struct, attr, @keys)
    |> apply_changes()
    |> Map.take(@keys)
  end
end
