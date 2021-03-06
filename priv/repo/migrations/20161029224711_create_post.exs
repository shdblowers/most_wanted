defmodule MostWanted.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :string

      timestamps()
    end
    create unique_index(:posts, [:title])

  end
end
