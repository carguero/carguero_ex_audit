defmodule CargueroExAudit.Test.Version do
  use Ecto.Schema
  import Ecto.Changeset

  schema "versions" do
    field :patch, CargueroExAudit.Type.Patch
    field :entity_id, :integer
    field :entity_schema, CargueroExAudit.Type.Schema
    field :action, CargueroExAudit.Type.Action
    field :recorded_at, :utc_datetime_usec
    field :rollback, :boolean, default: false

    # custom fields
    belongs_to :actor, CargueroExAudit.Test.User
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:patch, :entity_id, :entity_schema, :action, :recorded_at, :rollback])
    |> cast(params, [:actor_id]) # custom fields
  end
end
