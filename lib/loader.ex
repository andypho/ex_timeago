defmodule ExTimeago.Loader do
  defmacro get_packs do
    :application.load(:ex_timeago)

    :application.get_key(:ex_timeago, :modules)
    |> case do
      {:ok, list} when is_list(list) -> list
      _ -> []
    end
    |> Enum.filter(fn m ->
      case Module.split(m) do
        ["ExTimeago", "Languages" | rest] when rest != [] -> true
        _ -> false
      end
    end)
  end
end
