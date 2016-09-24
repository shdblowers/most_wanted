defmodule MostWanted.Repo.Migrations.CreateRequest do
  use Ecto.Migration

  def change do
    create table(:requests) do
      add :title, :string
      add :body, :string

      timestamps()
    end
    create unique_index(:requests, [:title])

  end
end
