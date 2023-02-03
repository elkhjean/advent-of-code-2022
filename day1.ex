defmodule Day1 do

  @moduledoc """
  Reads the inventory .txt file, extracts, sums and sorts all individual inventories.
  Returns a list of every elfs total calorie inventory.
  """
  def read_inventory() do
    collective_inv = String.split(File.read!("resources/calinv.txt"), "\r\n\r\n")
    collective_inv = Enum.map(collective_inv, fn part -> String.split(part) end)
    collective_inv = Enum.map(collective_inv, fn part -> Enum.map(part, fn n -> {the_int, _} = Integer.parse(n); the_int end) end)
    collective_inv = sum_indiv(collective_inv)
    Enum.sort(collective_inv, :desc)
  end

  def sum_indiv(inv) do
    Enum.map(inv, fn indiv_inv -> Enum.sum(indiv_inv) end)
  end

  def max_inv() do
    Enum.max(read_inventory())
  end

  def sum_top_n(n) do
    Enum.reduce(Enum.take(read_inventory(), n), 0, fn x, acc -> x + acc end)
  end

end
