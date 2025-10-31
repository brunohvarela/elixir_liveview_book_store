defmodule BookStore.Repo.Migrations.AddUserIdToBook do
  use Ecto.Migration

  def change do
    drop table("books")
  end
end
