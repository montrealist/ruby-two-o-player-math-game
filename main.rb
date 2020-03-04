require_relative "./game"
require_relative "./player"
require_relative "./question"

include MathGame

@questions = [
    Question.new("1 + 1", 2),
    Question.new("1 + 7", 8),
    Question.new("5 + 1", 6),
    Question.new("2 - 1", 1),
    Question.new("3 + 1", 4),
    Question.new("4 + 1", 5),
    Question.new("5 + 1", 6),
    Question.new("6 - 1", 5),
    Question.new("7 + 1", 8),
    Question.new("10 + 0", 10)
]

game = MathGame::Game.new(@questions)
game.start