defmodule MostWanted.Repo.Migrations.CreateVote do
  use Ecto.Migration

  def change do
    create table(:votes) do
      add :decision, :integer
      add :post_id, references(:posts, on_delete: :nothing)

      timestamps()
    end
    create index(:votes, [:post_id])

  end
end
