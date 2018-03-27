defmodule Handler.EventSupervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def start_link(_init) do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    children = [
      worker(Handler.EventHandler, [])
    ]

    supervise(children, strategy: :one_for_one)
  end
end
