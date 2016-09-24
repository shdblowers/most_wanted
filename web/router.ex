defmodule MostWanted.Router do
  use MostWanted.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MostWanted do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/requests", RequestController
  end

  # Other scopes may use custom stacks.
  # scope "/api", MostWanted do
  #   pipe_through :api
  # end
end
