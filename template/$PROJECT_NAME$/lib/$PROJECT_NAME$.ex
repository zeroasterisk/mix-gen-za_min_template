defmodule <%= @project_name_camel_case %> do
  @moduledoc """
  Documentation for <%= @project_name_camel_case %>.
  """
  import <%= @project_name_camel_case %>.Helper
  require Logger

  @doc """
  main do stuff

  ## Examples

      iex> <%= @project_name_camel_case %>.main(:p1)
      :TODO

      iex> <%= @project_name_camel_case %>.main(:p2)
      :TODO

  """
  def main(:p1) do
    answer = :TODO
    Logger.info "Here is P1 #{answer}"
    answer
  end
  def main(:p2) do
    answer = :TODO
    Logger.info "Here is P2 #{answer}"
    answer
  end
  def main(arg) do
    Logger.info "invoked main(#{inspect(arg)})"
    arg
  end

  @doc """
  Function does...

  ## Examples

      iex> <%= @project_name_camel_case %>.func_template(:todo)
      :todo

      iex> <%= @project_name_camel_case %>.func_template(:more)
      :more

  """
  def func_template(nil), do: :nope
  def func_template(true), do: :yep
  def func_template(arg) do
    # Logger.info "invoked func_template(#{inspect(arg)}) (no skip)"
    arg
  end


end
