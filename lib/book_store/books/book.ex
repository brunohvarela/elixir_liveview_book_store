defmodule BookStore.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :title, :string
    belongs_to :user, BookStore.Users.User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :user_id])
    |> validate_required([:title, :user_id])
  end
end
