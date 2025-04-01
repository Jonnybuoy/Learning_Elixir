defmodule ShopWeb.ProductHTML do
  use ShopWeb, :html

  # def index(assigns) do
  #   ~H"""
  #   <h1>This is the products listing page</h1>
  #   """
  # end

  embed_templates "product_html/*"

  attr :name, :string, required: true

  def product(assigns) do
    ~H"""
    <%!-- <h1>Game: <%= assigns.name %></h1> --%>
    <h1>Game: <%= @name %></h1>
    """
  end
end
