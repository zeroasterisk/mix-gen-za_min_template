defmodule Mix.Tasks.<%= @project_name_camel_case %> do
  @moduledoc """
  Mix Task Main entrypoint for <%= @project_name_camel_case %>.

  Usage:
  $ mix <%= @project_name %>
  $ mix <%= @project_name %> arg1 arg2
  """
  use Mix.Task

  @shortdoc "mix task..."
  def run(argv \\ []) do
    argv |> Enum.each(&run_per_arg/1)
    IO.puts("...done")
  end

  @shortdoc "mix task for each arg..."
  def run_per_arg(arg \\ :default) do
    IO.puts("Executing main(#{inspect(arg)})")
    output = <%= @project_name_camel_case %>.main(arg)
    IO.puts("#{inspect(output)}")
  end
end
