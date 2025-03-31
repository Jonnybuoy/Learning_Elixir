defmodule ShopWeb.ProductController do
  use ShopWeb, :controller

  def index(conn, _params) do
    # dbg(params) -> to debug
    render(conn, :index)
  end

  def show(conn, %{"id" => id}) do
    render(conn, :show, id: id)
  end




end
