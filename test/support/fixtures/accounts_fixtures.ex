defmodule DefaultApi.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `DefaultApi.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{

      })
      |> DefaultApi.Accounts.create_user()

    user
  end
end
