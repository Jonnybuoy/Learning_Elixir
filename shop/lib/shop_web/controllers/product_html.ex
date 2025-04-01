defmodule ShopWeb.ProductHTML do
  use ShopWeb, :html
  alias Shop.Products.Product

  # def index(assigns) do
  #   ~H"""
  #   <h1>This is the products listing page</h1>
  #   """
  # end

  embed_templates "product_html/*"

  attr :product, Product, required: true


  def product(assigns) do
    ~H"""
    <%!-- <h1>Game: <%= assigns.name %></h1> --%>
    <.link href={~p"/products/#{@product.slug}"} class="block">{@product.name}</.link>
    """
  end
end
