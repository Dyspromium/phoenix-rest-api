defmodule DefaultApi.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :description, :string
      add :owner_id, references(:users, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:companies, [:owner_id])
  end
end
