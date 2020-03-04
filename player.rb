module MathGame
    class Player
        attr_reader :name
        attr_accessor :lives

        def initialize(name)
            @name = name
            @lives = 3
            puts "player #{name} created with #{lives} lives."
        end
    end
end