defmodule CargueroExAudit.Test.Util do
  alias CargueroExAudit.Test.{Repo, User}

  def create_user(name \\ "Admin", email \\ "admin@example.com") do
    params = %{name: name, email: email}
    changeset = User.changeset(%User{}, params)
    Repo.insert!(changeset)
  end
end