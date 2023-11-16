class OrangeTree
    def initialize
        @age = 0
        @height = 0 # Unit: cm
        @alive = true
        @orangeCount = 0
    end

    def age
        return @age
    end

    def height
        return @height
    end

    def oneYearPasses
        @age = @age + 1

        if(@age <= 3) 
            @height = @height + 10

            if(@age > 1)
                @orangeCount = 100 + @age * 10
            end
        else
            @alive = false
            @orangeCount = 0
        end
    end

    def countTheOranges
        return @orangeCount
    end

    def pickAnOrange
        if(@orangeCount > 0)
            @orangeCount = @orangeCount - 1
            return 'You are lucky, there is a fresh and delicious orange here!'
        else
            return 'Don\'t be sad, there are no more oranges to pick this year'
        end
    end
end


tree = OrangeTree.new
4.times do
    tree.oneYearPasses
    puts tree.age.to_s + ' year passed, the height of the orange tree is ' + tree.height.to_s + ' cm with ' + tree.countTheOranges.to_s + ' oranges.'
    puts tree.pickAnOrange
    puts 'There are ' + tree.countTheOranges.to_s + ' oranges left on the tree.'
    puts ''    
end
