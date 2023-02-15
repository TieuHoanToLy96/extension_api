defmodule ExtensionApi.Repo do
  use Ecto.Repo,
    otp_app: :extension_api,
    adapter: Ecto.Adapters.Postgres
end
