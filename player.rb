# player lives get tracked

class Player
    attr_accessor :name, :lives

    def  initialize(n)
        self.name = n
        self.lives = 3
    end

    def rando_num
        rand(20)
    end

    def question
        self.num_one = rando_num
        self.num_two = rando_num
        puts "#{self.name}: What does #{self.num_one} plus #{self.num_two} equal?"
    end

end

vlad = Player.new("Vlad")
puts vlad.name
puts vlad.lives
puts question.inspect