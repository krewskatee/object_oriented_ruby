require_relative "store_item"
require_relative "food"
require_relative "shelflife"

module Store
  class Food < StoreItem
    include Shelflife
    attr_writer :shelf_life
    attr_reader :shelf_life

    def initialize(input_options)
      super
      @shelf_life = input_options[:shelf_life]
    end
  end
end
