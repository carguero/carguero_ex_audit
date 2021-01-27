:ok = Application.ensure_started(:carguero_ex_audit)
CargueroExAudit.Test.Repo.start_link()
Ecto.Adapters.SQL.Sandbox.mode(CargueroExAudit.Test.Repo, :auto)


migrations_path = Path.join([:code.priv_dir(:carguero_ex_audit), "repo", "migrations"])
Ecto.Migrator.run(CargueroExAudit.Test.Repo, migrations_path, :up, all: true)

ExUnit.start()
