module MathGame
    class Question
        attr_reader :question, :answer
        def initialize(q, a)
            @question = q
            @answer = a
        end

    end
end