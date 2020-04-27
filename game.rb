require './player.rb'

class Game
    
    def initialize
        @players = [Player.new('1'), Player.new('2')]
        @round = 1
end

def game_status
    puts "P#{@players.first.name}: #{@players.first.lives}/3  P#{@players.last.name}: #{@players.last().lives}/3  "
end

def has_lives
    @players.select{|player| player.lives > 0}
end

def game_over
    has_lives.count == 1
end

def next_round
    @round += 1
    @players.rotate!
end

def run 

    while(!game_over)

        curr_player = has_lives.first
        oppo_player = has_lives.last

        puts "----- NEW TURN -----"

        curr_player.question 
        game_status
        next_round

    end
    puts "Player #{has_lives.first.name} wins with a score of #{@players.first.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
end

end