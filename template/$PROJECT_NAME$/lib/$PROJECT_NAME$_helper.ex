defmodule <%= @project_name_camel_case %>.Helper do
  @moduledoc """
    Helpers for <%= @project_name_camel_case %>.
  """
  # require Logger

  @input "whatever"


  @doc """
  quick and simple @input grabber
  """
  def get_input, do: @input

  @doc """
  quick and simple obtain a stream from an input file path
  """
  def get_file_stream(path), do: path |> File.stream!()

  @doc """
  convert a string to a freq count per letter

  ## Examples

      iex> <%= @project_name_camel_case %>.Helper.string_freq_count("abcdef")
      %{"a" => 1, "b" => 1, "c" => 1, "d" => 1, "e" => 1, "f" => 1}

      iex> <%= @project_name_camel_case %>.Helper.string_freq_count("bababc")
      %{"a" => 2, "b" => 3, "c" => 1}

  """
  def string_freq_count(str) do
    str
    |> String.split("", trim: true)
    |> Enum.reduce(%{}, fn(l, acc) -> acc |> Map.update(l, 1, &(&1 + 1)) end)
  end

  @doc """
  Does a Map have a Value as a Member?

  ## Examples

      iex> <%= @project_name_camel_case %>.Helper.map_value_member?(<%= @project_name_camel_case %>.Helper.string_freq_count("abcdef"), 2)
      false

      iex> <%= @project_name_camel_case %>.Helper.map_value_member?(<%= @project_name_camel_case %>.Helper.string_freq_count("bababc"), 2)
      true

      iex> <%= @project_name_camel_case %>.Helper.map_value_member?(<%= @project_name_camel_case %>.Helper.string_freq_count("bababc"), 3)
      true

      iex> <%= @project_name_camel_case %>.Helper.map_value_member?(<%= @project_name_camel_case %>.Helper.string_freq_count("bababc"), 4)
      false

  """
  def map_value_member?(%{} = f, n) do
    f |> Map.values() |> Enum.member?(n)
  end

  @doc """
  build grid and assign {x, y} points

  ## Examples

      iex> <%= @project_name_camel_case %>.Helper.grid(5) |> List.last()
      %{x: 4, y: 4}

      iex> <%= @project_name_camel_case %>.Helper.grid(5) |> List.first()
      %{x: 0, y: 0}

      iex> <%= @project_name_camel_case %>.Helper.grid(5, %{id: :custom}) |> List.last()
      %{id: :custom, x: 4, y: 4}

  """
  def grid(len \\ 10, src \\ %{}) do
    len = len - 1
    for x <- 0..len, y <- 0..len do
      src |> Map.merge(%{x: x, y: y})
    end
  end

end
