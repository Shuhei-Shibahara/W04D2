class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        
    end

    def bonus(multiplier)
        salary * multiplier
    end

end

class Manager < Employee

    def initialize(name, title, salary, boss, employees)
        super(name, title, salary, boss)
        @employees = employees
    end

    def bonus(multiplier)
        bonus = 0
        @employees.each do |employee|
            if employee.is_a?(Manager)
                bonus += (employee.salary * multiplier) + employee.bonus(multiplier)
            else
                bonus += (employee.salary * multiplier)
            end
        end
        bonus
    end
end
david = Employee.new('David', 'TA', 10000, 'darren')
shawna = Employee.new('Shawna', 'TA', 12000, 'darren')
darren = Manager.new('Darren','TA Manager', 78000, 'ned', [david, shawna])
ned = Manager.new('Ned', 'Founder',1000000, nil, [darren])
p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000
