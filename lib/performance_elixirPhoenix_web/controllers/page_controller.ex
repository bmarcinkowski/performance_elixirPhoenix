defmodule PerformanceElixirPhoenixWeb.PageController do
  use PerformanceElixirPhoenixWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
