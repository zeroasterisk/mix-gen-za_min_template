defmodule <%= @project_name_camel_case %>Test do
  use ExUnit.Case
  doctest <%= @project_name_camel_case %>
  doctest <%= @project_name_camel_case %>.Helper

  # test "greets the world" do
  #   assert <%= @project_name_camel_case %>.hello() == :world
  # end
end
