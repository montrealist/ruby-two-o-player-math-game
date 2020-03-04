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
            puts "current player is now #{current_player.name}"
        end

        def start
            self.init_players
            @current_player = @player1
            loop do 
                q = @questions[@current_question]
                puts q["question"]
                answer = gets.chomp
                if answer.to_i == q["answer"]
                    puts "yes!"
                else
                    puts "no!"
                    # decrement lives
                end
                # check lives of this player, end game if 0
                # switch_player
                # increment current question
                @current_question += 1
                
                break if @current_question == @questions.length
            end 
            
        end
        
        # show first question
        # get answer, compare to the right answer
        # show feedback, update lives

    end
end