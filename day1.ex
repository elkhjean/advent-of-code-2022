defmodule Day1 do

  def read_inventory() do
    content = String.split(File.read!("resources/calinv.txt"), "\r\n\r\n")
    content = Enum.map(content, fn part -> String.split(part) end)
    content = Enum.map(content, fn part -> Enum.map(part, fn n -> {the_int, _} = Integer.parse(n); the_int end) end)
    content
  end

  def highest_cal_count(collective_inv) do
    Enum.max(Enum.map(collective_inv, fn indiv_inv -> Enum.sum(indiv_inv) end))
  end

end
