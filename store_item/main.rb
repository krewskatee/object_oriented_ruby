require_relative "store_item"
require_relative "food"

item_1 = Store::StoreItem.new(
                      name: "Chair",
                      color: "green",
                      height: 3,
                      price: 30
                      )

item_2 = Store::StoreItem.new(
                      name: "HP",
                      color: "black",
                      price: 550
                      )

item_3 = Store::StoreItem.new(
                      name: "Harry Potter",
                      color: "color",
                      price: 10
                      )

food_item_1 = Store::Food.new(
                      name: "Jello",
                      color: "Red",
                      price: 5,
                      shelf_life: 2
                      )

p food_item_1.shelf_life

p item_1.name
item_1.name = "not_char"
p item_1.name
p food_item_1.shelf_life
p food_item_1.rot
