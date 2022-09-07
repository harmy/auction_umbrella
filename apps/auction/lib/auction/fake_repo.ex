defmodule Auction.FakeRepo do
  alias Auction.Item
  
  @items [%Item{
    id: 1,
    title: "My first item",
    description: "A description",
    ends_at: ~N[2023-01-01 00:00:00]
  },
  %Item{
    id: 2,
    title: "WarGames Bluray",
    description: "A description",
    ends_at: ~N[2023-01-01 00:00:00]
  },
  %Item{
    id: 3,
    title: "U2 - Achtung",
    description: "A description",
    ends_at: ~N[2023-01-01 00:00:00]
  }]

  def all(Item), do: @items

  def get!(Item, id) do
    Enum.find(@items, fn(item) -> item.id === id end)
  end

  def get_by(Item, map) do
    Enum.find(@items, fn(item) ->
      Enum.all?(Map.keys(map), fn(key) ->
      Map.get(item, key) === map[key]
      end)
    end)
  end

end