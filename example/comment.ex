defmodule CargueroExAudit.Test.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    belongs_to :author, CargueroExAudit.Test.User
    field :body, :string

    belongs_to :blog_post, CargueroExAudit.Test.BlogPost

    timestamps(type: :utc_datetime)
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:author_id, :body])
  end
end