defmodule ExTimeago.Something do
  defmacro get_packs do
    # IO.inspect({"getpacks"})

    :application.load(:ex_timeago)

    :application.get_key(:ex_timeago, :modules)
    # |> IO.inspect()
    |> case do
      {:ok, list} when is_list(list) -> list
      _ -> []
    end
    # |> IO.inspect()
    |> Enum.filter(fn m ->
      case Module.split(m) do
        ["ExTimeago", "Languages" | rest] when rest != [] -> true
        _ -> false
      end
    end)
  end
end
