require_relative "./game"
require_relative "./player"
require_relative "./question"

include MathGame

@questions = [
    { "question" => "1 + 1", "answer" => 2 },
    { "question" => "1 + 7", "answer" => 8 },
    { "question" => "5 + 1", "answer" => 6 },
    { "question" => "2 - 1", "answer" => 1 },
    { "question" => "3 + 1", "answer" => 4 },
    { "question" => "4 + 1", "answer" => 5 },
    { "question" => "5 + 1", "answer" => 6 },
    { "question" => "6 - 1", "answer" => 5 },
    { "question" => "7 + 1", "answer" => 8 },
    { "question" => "10 + 0", "answer" => 10 }
]

game = MathGame::Game.new(@questions)
game.start