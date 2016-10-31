defmodule BarePh.PageController do
  use BarePh.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
