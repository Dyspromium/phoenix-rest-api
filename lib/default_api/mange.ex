defmodule DefaultApi.Mange do
  @moduledoc """
  The Mange context.
  """

  import Ecto.Query, warn: false
  alias DefaultApi.Repo

  alias DefaultApi.Mange.Company

  @doc """
  Returns the list of companies.

  ## Examples

      iex> list_companies()
      [%Company{}, ...]

  """
  def list_companies do
    Repo.all(Company)
  end

  @doc """
  Gets a single Company.

  Raises `Ecto.NoResultsError` if the Company does not exist.

  ## Examples

      iex> get_Company!(123)
      %Company{}

      iex> get_Company!(456)
      ** (Ecto.NoResultsError)

  """
  def get_company!(id), do: Repo.get!(Company, id)

  @doc """
  Creates a Company.

  ## Examples

      iex> create_Company(%{field: value})
      {:ok, %Company{}}

      iex> create_Company(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_company(attrs \\ %{}) do
    %Company{}
    |> Company.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a Company.

  ## Examples

      iex> update_Company(Company, %{field: new_value})
      {:ok, %Company{}}

      iex> update_Company(Company, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_company(%Company{} = company, attrs) do
    company
    |> Company.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Company.

  ## Examples

      iex> delete_Company(Company)
      {:ok, %Company{}}

      iex> delete_Company(Company)
      {:error, %Ecto.Changeset{}}

  """
  def delete_company(%Company{} = company) do
    Repo.delete(company)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking Company changes.

  ## Examples

      iex> change_Company(Company)
      %Ecto.Changeset{data: %Company{}}

  """
  def change_company(%Company{} = company, attrs \\ %{}) do
    Company.changeset(company, attrs)
  end
end
