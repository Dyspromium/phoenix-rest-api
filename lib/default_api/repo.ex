defmodule DefaultApi.Repo do
  use Ecto.Repo,
    otp_app: :default_api,
    adapter: Ecto.Adapters.Postgres
end
