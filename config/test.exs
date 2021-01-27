use Mix.Config

config :carguero_ex_audit, CargueroExAudit.Test.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool: Ecto.Adapters.SQL.Sandbox,
  username: "postgres",
  password: "postgres",
  database: "carguero_ex_audit_test",
  hostname: "localhost",
  pool_size: 10

config :logger, level: :info

config :carguero_ex_audit,
  ecto_repos: [CargueroExAudit.Test.Repo],
  version_schema: CargueroExAudit.Test.Version,
  tracked_schemas: [
    CargueroExAudit.Test.User,
    CargueroExAudit.Test.BlogPost,
    CargueroExAudit.Test.BlogPost.Section,
    CargueroExAudit.Test.Comment
  ],
  primitive_structs: [
    Date
  ]
