defmodule Auction do
  @moduledoc """
  Documentation for `Auction`.
  """
  alias Auction.{Repo, Item}

  @repo Repo

  def list_items, do: @repo.all(Item)

  def get_item(id) do
    @repo.get!(Item, id)
  end

  def get_item_by(attrs) do
    @repo.get_by(Item, attrs)
  end

  def insert_item(attrs) do
    %Item{}
    |> Item.changeset(attrs)
    |> @repo.insert()
  end

  def delete_item(%Item{} = item), do: @repo.delete(item)

  def update_item(%Item{} = item, updates) do
    item
    |> Item.changeset(updates)
    |> @repo.update()
  end

  def new_item, do: Item.changeset(%Item{})

  def edit_item(id) do
    get_item(id)
    |> Item.changeset()
  end

end
