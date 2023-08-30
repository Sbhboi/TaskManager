require "./list.rb"

class Item
    attr_reader :name, :completed, :due_date, :assigned_to, :comments, :priority

    def initialize(name)
        @name = name
        @completed = false
        @due_date = nil
        @comments = {}
        @assigned_to = []
        @priority = "Normal"
    end

    def complete_task
        @completed = true
    end

    def completed?
        @completed
    end

    def assign_user(name)
        @assigned_to << name
    end

    def remove_user(name)
        @assigned_to.delete(name)
    end

    def set_due_date(date)
        @due_date = date
    end

    def delete_task
        @name = nil
    end

    def update_task(new_name)
        @name = new_name
    end

    def add_comment(comment)
        @comments << comment
    end

    def set_priority(priority)
        @priority = priority
    end
end