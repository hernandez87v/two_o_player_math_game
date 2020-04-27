class Player
    attr_accessor :name, :lives

    def  initialize(n)
        @name = n
        @lives = 3
    end

    def rando_num
        rand(20) +1
    end

    def question
        @num_one = rando_num
        @num_two = rando_num
        puts "Player #{@name}: What does #{@num_one} plus #{@num_two} equal?"
        @answer = gets.chomp
        if Integer(@answer) == @num_one + @num_two
            puts "Player #{@name}: YES! You are correct."
        else
            puts "PLayer #{@name}: Seriously? No!"
            @lives -= 1
        end
    end

end
