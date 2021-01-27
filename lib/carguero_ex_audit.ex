defmodule CargueroExAudit do
  use Application

  def start(_, _) do
    import Supervisor.Spec

    children = [
      worker(CargueroExAudit.CustomData, [])
    ]

    opts = [strategy: :one_for_one, name: CargueroExAudit.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @doc """
  Tracks the given keyword list of data for the current process
  """
  def track(data) do
    track_pid(self(), data)
  end

  @doc """
  Tracks the given keyword list of data for the given process
  """
  def track_pid(pid, data) do
    CargueroExAudit.CustomData.track(pid, data)
  end
end
