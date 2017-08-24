module Store
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
end
