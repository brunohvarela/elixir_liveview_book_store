defmodule BookStore.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :title, :string
    field :user_id, :id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book, attrs, user_scope) do
    book
    |> cast(attrs, [:title])
    |> validate_required([:title])
    |> put_change(:user_id, user_scope.user.id)
  end
end
