	require_relative 'card'

	class Deck
			attr_accessor :cards

			def initialize
					generate_cards
			end

			def shuffle!
				@cards.shuffle!
			end

			def pop
				@cards.shift
			end

			def handout(n = 5)
				random_cards = []
				n.times do
					random_cards.push(shift)
				end
				return random_cards 			 	
			end


			def generate_cards
					@cards = []
					1.upto(13) do |number|
							['C', 'E', 'D', 'T'].each do|suit|
							@cards.push(Card.new(number, suit))
							end
					end
			end
	end
