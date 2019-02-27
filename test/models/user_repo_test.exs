defmodule Rumbl.UserRepoTest  do
  use Rumbl.ModelCase
  alias Rumbl.User

  @valid_attrs %{name: "A User", username: "eva"}

  test "converts unique_constraint on username to error" do
    insert_user(username: "kevin")
    attrs = Map.put(@valid_attrs, :username, "kevin")
    changeset = User.changeset(%User{}, attrs)

    assert {:error, changeset} = Repo.insert(changeset)
    assert [username: {"has already been taken", []}] == changeset.errors
  end
end
