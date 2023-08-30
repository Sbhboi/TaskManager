require "./list.rb"
require "./item.rb"


@list


loop do
    puts "Welcome to my home !"
    puts "Select your choice:-"
    puts "1 - Enter your list name"
    puts "2 - Add item into the list"
    puts "3 - Display items added"
    puts "4 - Check item to complete"
    puts "5 - remove checked item"
    puts "0 - exit"
    choice = gets.chomp.to_i

    case choice
        when 1
            puts "Enter your list name:-"
            name = gets.chomp
            @list = List.new(name)
            puts "You have created #{@list.name}"
            puts @list.name
            
        when 2
            puts "Add item to #{@list.name}"
            title = gets.chomp
            @list.add_item(title)
        when 3
            @list.display_item
        when 4
            @list.display_item
            puts "Choose item to be tick as complete:-"
            index = gets.chomp.to_i
            item = @list.item[index - 1]
            item.complete_task
            @list.display_item
        when 5
            @list.display_item
            puts "Choose item to be remove:-"
            index = gets.chomp.to_i
            item = @list.item[index - 1]
            @list.remove_item(item)
            @list.display_item
        when 0
            puts "Have a good day, bye ~"
            exit
        
    end
end