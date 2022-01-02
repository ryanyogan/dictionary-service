defmodule Dictionary.Runtime.Application do
  use Application

  @impl true
  def start(_type, _args) do
    Dictionary.Runtime.Server.start_link()
  end
end
