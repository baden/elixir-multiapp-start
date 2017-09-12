defmodule MainApp do

  alias :erl_mod, as: ErlMod

  @moduledoc """
  Documentation for MainApp.
  """

  @doc """
  Hello world.

  ## Examples

      iex> MainApp.hello
      :world

  """
  def hello do
    :world
  end

  @spec hello1(integer) :: integer
  def hello1(x) do
    ErlMod.foo1(x)
  end
end
