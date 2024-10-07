class Card
  attr_reader:rank,:suit

  def initialize (rank,suit)
    @rank=rank
    @suit=suit
  end
  def to_s
    "#{@rank} of #{@suit}"
  end
end

class Deck
  RANKS=['2','3','4','5','6','7','8','9','10','Jack','Queen','King','Ace']
  SUITS=['Clubs','Diamonds','Hearts','Spades']
  def initialize(deck_no)
    @cards=[]
    # puts "from ini #{deck_no}"
    deck_no.times do

    
    SUITS.each do |suit|
      RANKS.each do |rank|
        @cards << Card.new(rank,suit)
      end
    end
    end
  end
  #Shuffle the deck
  def shuffle
    @cards.shuffle!
  end

  #Deal one card (remove and return the top card)
  def deal
    if @cards.length>0
        @cards.pop
    else
      puts "Card is finished"
    end
  end

  #Number of cards remaining in the deck
  def remaining_cards
    @cards.size
  end
end

# deck=Deck.new
# deck.shuffle
# 100.times do
#   if deck.remaining_cards==0
    
#     break
#   else
#     puts "Dealt:#{deck.deal}"
  
#   end

# end

# puts "Cards remaining in deck: #{deck.remaining_cards}"
# deck_limit=3
# deck=Deck.new
def play
  puts "Enter how many players do you want:"
  players=gets.chomp.to_i
  puts "Cards Number:"
  cards=gets.chomp.to_i

  deck_count=((players*cards.to_f)/52).ceil

  puts "deck_count:#{deck_count}"
  deck=Deck.new(deck_count)
  deck.shuffle
  player_count=0
  players.times do 
    player_count+=1
    puts "Player:#{player_count}"
    dealt_count=0
    cards.times do
        puts "Dealt(#{dealt_count+=1}): #{deck.deal}"
    end
  end
  puts "Remaining Cards #{deck.remaining_cards}"
end

play
# if players*cards<=deck.remaining_cards
#   deck.shuffle
#   player_count=0
#   players.times do 
#     player_count+=1
#     puts "Player:#{player_count}"
#     cards.times do
#        puts "Dealt:#{deck.deal}"
#     end
#   end
# else
#   2.upto(deck_limit) do |n|
#     deck=deck+deck
#      if(deck.length)>=(players*cards)
      
#         puts "#{deck.length}"
#       break
#      end
#   end


  
#   puts "Card is not enough"
# end






