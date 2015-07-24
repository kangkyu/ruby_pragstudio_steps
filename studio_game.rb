require_relative 'player'
require_relative 'game'

# player1 = Player.new("Moe")
# player2 = Player.new("Larry", 60)
# player3 = Player.new("Curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || 'players.csv')

# knuckleheads.add_player(player3)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player1)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase

  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'exit', 'quit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end
