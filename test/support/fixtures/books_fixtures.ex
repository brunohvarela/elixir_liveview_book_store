defmodule BookStore.BooksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BookStore.Books` context.
  """

  @doc """
  Generate a book.
  """
  def book_fixture(scope, attrs \\ %{}) do
    attrs =
      Enum.into(attrs, %{
        title: "some title"
      })

    {:ok, book} = BookStore.Books.create_book(scope, attrs)
    book
  end
end
