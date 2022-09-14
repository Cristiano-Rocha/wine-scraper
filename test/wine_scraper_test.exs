defmodule WineScraperTest do
  use ExUnit.Case
  doctest WineScraper

  test "greets the world" do
    assert WineScraper.hello() == :world
  end
end
