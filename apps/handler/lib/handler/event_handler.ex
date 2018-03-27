defmodule Handler.EventHandler do
  use Commanded.Event.Handler, name: __MODULE__, start_from: :origin

  require Logger

  def handle(evt, _metadata) do
    Logger.info("\n\n\nReceived EVT: #{inspect evt}\n\n\n")

    :ok
  end
end
