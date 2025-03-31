defmodule PhnxDemo.Repo do
  use Ecto.Repo,
    otp_app: :phnx_demo,
    adapter: Ecto.Adapters.Postgres
end
