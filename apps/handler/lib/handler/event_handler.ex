defmodule Handler.EventHandler do
  use Commanded.Event.Handler, name: "ExternalHandler"

  alias Emitter.Events.AggregateCreated

  require Logger

  def handle(%AggregateCreated{} = evt, _metadata) do
    Logger.info("RECEIVED EVT: #{inspect(evt)}")

    :ok
  end
end
