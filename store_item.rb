# item_1 = {name: "Chair", color: "green", price: 30}
# item_2 = {:name => "HP", :color => "black", :price => 550}
# item_3 = {"name" => "Harry Potter", "color" => "black", "price" => 10}

class StoreItem
  attr_reader :name, :color, :price
  attr_writer :name, :color, :price

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
    @height = input_options[:height]
  end
end

class Food < StoreItem
  attr_writer :shelf_life
  attr_reader :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

item_1 = StoreItem.new(
                      name: "Chair",
                      color: "green",
                      height: 3,
                      price: 30
                      )

item_2 = StoreItem.new(
                      name: "HP",
                      color: "black",
                      price: 550
                      )

item_3 = StoreItem.new(
                      name: "Harry Potter",
                      color: "color",
                      price: 10
                      )

food_item_1 = Food.new(
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
p food_item_1.name
