require "./item.rb"

class List
    attr_accessor :name, :item, :completed

    def initialize(name)
        @name = name
        @item = []
        @completed = completed
    end

    def add_item(title)
        item = Item.new(title)
        @item << item
        puts "Item #{title} is added."
    end

    def display_item
        puts "Items: #{@item}"
        @item.each do |item, index|
            status = item.completed? ? "[x]" : "[ ]"
            if item.completed?
                status = "[x]"
            else
                status = "[ ]"
            end
        
            # puts "#{index + 1} - #{status} - #{item.title}"
        end 
    end

    def remove_item(item)
        @item.delete(item)        
    end

end

    # groceries = List.new("groceries", [])
    # groceries.add_item("Coffee")
    # groceries.add_item("Sugar")
    # groceries.add_item("Milk")
    # groceries.display_items