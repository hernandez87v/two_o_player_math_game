# player lives get tracked

class Player
    attr_accessor :name, :lives

    def  initialize(n)
        @name = n
        @lives = 3
    end

    def rando_num
        rand(20)
    end

end

vlad = Player.new("Vlad")
puts vlad.name
puts vlad.lives