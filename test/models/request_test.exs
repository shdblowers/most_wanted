defmodule MostWanted.RequestTest do
  use MostWanted.ModelCase

  alias MostWanted.Request

  @valid_attrs %{body: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Request.changeset(%Request{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Request.changeset(%Request{}, @invalid_attrs)
    refute changeset.valid?
  end
end
