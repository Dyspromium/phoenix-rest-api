defmodule DefaultApiWeb.Router do
  use DefaultApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DefaultApiWeb do
    pipe_through :api

    resources "/users", UserController
    resources "/companies", CompanyController
  end
end
