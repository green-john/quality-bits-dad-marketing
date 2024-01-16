defmodule Qbits.VoxApplication do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [Qbits.Esbuild]

    opts = [strategy: :one_for_one, name: Qbits.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
