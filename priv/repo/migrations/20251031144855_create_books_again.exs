defmodule BookStore.Repo.Migrations.CreateBooksAgain do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :text
      add :user_id, references(:users, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end
  end
end
