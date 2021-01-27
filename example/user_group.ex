defmodule CargueroExAudit.Test.UserGroup do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_groups" do
    field :name, :string
    belongs_to :user, CargueroExAudit.Test.User
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :user_id])
  end
end