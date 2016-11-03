defmodule MostWanted.Vote do
  use MostWanted.Web, :model

  schema "votes" do
    field :decision, :integer
    belongs_to :post, MostWanted.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:decision])
    |> validate_required([:decision])
  end
end
