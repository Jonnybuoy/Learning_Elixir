defmodule ShopWeb.Plugs.SetConsole do
  import Plug.Conn

  @valid_consoles ["nintendo", "pc", "playstation", "xbox"]
  def init(opts), do: opts

  @spec call(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def call(%Plug.Conn{:params => %{"console" => console}} = conn, _opts)
    when console in @valid_consoles do
    conn
    |> assign(:console, console)
    |> put_resp_cookie("console", console, max_age: :timer.hours(24) * 30)
  end

  def call(%Plug.Conn{:cookies => %{"console" => console}} = conn, _opts)
  when console in @valid_consoles do
    conn
    |> assign(:console, console)
    end

  def call(%Plug.Conn{} = conn, opts) do
    # IO.inspect("Module plug is working")
    # IO.inspect("OPTS: " <> opts)
    conn
    |> assign(:console, opts)
    |> put_resp_cookie("console", opts, max_age: :timer.hours(24) * 30)

  end
end
