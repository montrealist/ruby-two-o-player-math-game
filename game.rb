module MathGame
    class Game
        attr_reader :questions, :current_question, :current_player

        def initialize(questions)
            @questions = questions # initialize array of questions
            @current_question = 0 # set current question to 0th index
            @game_over = false
            puts("game initialized! #{self.current_question}")
        end

        def init_players
            puts 'game started!'
            puts 'what is first player name?'
            p1 = gets.chomp
            @player1 = MathGame::Player.new(p1)
            puts 'what is second player name?'
            p2 = gets.chomp
            @player2 = MathGame::Player.new(p2)
        end

        def switch_player
            @current_player = @current_player == @player1 ? @player2 : @player1
            # puts "current player is now #{@current_player.name}"
        end

        def start
            self.init_players
            @current_player = @player1
            loop do 
                q = @questions[@current_question]
                puts q.question
                answer = gets.chomp
                if answer.to_i == q.answer
                    puts "#{@current_player.name}: YES! High-five!"

                else
                    puts "#{@current_player.name}: NO! Boo."
                    @current_player.lives -= 1; # decrement player lives
                end

                # check lives of this player, end game if 0:
                if @current_player.lives == 0
                    @game_over = true
                end
                
                switch_player
                
                @current_question += 1 # increment current question
                
                break if @game_over || @current_question == @questions.length
            end 

            @winner = @player1.lives > @player2.lives ? @player1 : @player2
            puts "#{@winner.name} wins with the score of #{@winner.lives}/3"
            
        end
    end
end