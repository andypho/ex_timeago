defmodule ExTimeago.Languages.Ca do
  @behaviour ExTimeago.Languages
  @moduledoc """
  Catalan
  """

  @impl ExTimeago.Languages
  def strings do
    %{
      prefix_ago: "fa",
      prefix_from_now: "d'aqui a",
      suffix_ago: nil,
      suffix_from_now: nil,
      seconds: "menys d'1 minut",
      minute: "1 minut",
      minutes: "uns %d minuts",
      hour: "1 hora",
      hours: "unes %d hores",
      day: "1 dia",
      days: "%d dies",
      month: "aproximadament un mes",
      months: "%d mesos",
      year: "aproximadament un any",
      years: "%d anys"
    }
  end
end
