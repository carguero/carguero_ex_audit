defmodule CargueroExAudit.Test.Repo do
  use Ecto.Repo,
    otp_app: :carguero_ex_audit,
    adapter: Ecto.Adapters.Postgres

  use CargueroExAudit.Repo
end
