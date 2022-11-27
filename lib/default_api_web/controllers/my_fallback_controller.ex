defmodule DefaultApiWeb.MyFallbackController do
    use Phoenix.Controller
    alias DefaultApiWeb.ChangesetView
  
    def call(conn, {:error, :not_found}) do
      conn
      |> put_status(:not_found)
      |> put_view(DefaultApiWeb.ErrorView)
      |> render(:"404")
    end
  
    def call(conn, {:error, :unauthorized}) do
      conn
      |> put_status(403)
      |> put_view(DefaultApiWeb.ErrorView)
      |> render(:"403")
    end

    def call(conn, {:error, changeset}) do
        conn
        |> put_status(:unprocessable_entity)
        |> put_view(ChangesetView)
        |> render("error.json", changeset: changeset)
    end
  end