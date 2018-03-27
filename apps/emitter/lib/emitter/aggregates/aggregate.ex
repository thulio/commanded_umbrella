defmodule Emitter.Aggregates.Aggregate do
  alias Emitter.Events.AggregateCreated
  alias Emitter.Commands.CreateAggregate

  defstruct [:id, :payload]

  def execute(%__MODULE__{id: nil} = _aggregate, %CreateAggregate{} = command) do
    %AggregateCreated{id: command.id, payload: command.payload}
  end

  def execute(%__MODULE__{} = _aggregate, %CreateAggregate{} = command) do
    {:error, :aggregate_already_created}
  end

  def apply(aggregate, %AggregateCreated{} = evt) do
    %__MODULE__{aggregate | id: evt.id, payload: evt.payload}
  end
end
