defmodule CargueroExAudit.Test.User do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {CargueroExAudit.Tracker, except: [:transient_field]}

  schema "users" do
    field :email, :string
    field :name, :string
    field :birthday, :date

    field :transient_field, :integer

    has_many :groups, CargueroExAudit.Test.UserGroup

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :name, :birthday])
  end
end
