class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        if 
        @boss = boss
        
    end

    def bonus(multiplier)
        salary * multiplier
    end

end

class Manager < Employee

    def initialize
        @employee = []
    end
    
    def bonus(multiplier)

    end


end