defmodule ShopWeb.ProductController do
  use ShopWeb, :controller

  alias Shop.Products

  def index(conn, _params) do
    # dbg(params) -> to debug
    products = Products.list_products()
    conn
    |> assign(:products, products)
    |> render(:index)
  end

  @spec show(Plug.Conn.t(), map()) :: Plug.Conn.t()
  def show(conn, %{"slug" => slug}) do
    product = Products.find_product_by_slug(slug)

    conn
    |> assign(:product, product)
    |> render(:show)
  end




end
