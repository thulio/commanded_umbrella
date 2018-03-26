defmodule Emitter.Router do
  use Commanded.Commands.Router

  alias Emitter.Commands.CreateAggregate
  alias Emitter.Aggregates.Aggregate

  identify(Aggregate, by: :id)
  dispatch(CreateAggregate, to: Aggregate)
end
