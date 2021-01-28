require_relative 'Board-Case'

class Board

	attr_accessor :ary_boardcase

	def initialize
		@case1 = BoardCase.new("A1",'.')
		@case2 = BoardCase.new("A2",'.')
		@case3 = BoardCase.new("A3",'.')
		@case4 = BoardCase.new("B1",'.')
		@case5 = BoardCase.new("B2",'.')
		@case6 = BoardCase.new("B3",'.')
		@case7 = BoardCase.new("C1",'.')
		@case8 = BoardCase.new("C2",'.')
		@case9 = BoardCase.new("C3",'.')
		@ary_boardcase = [@case1,@case2,@case3,@case4,@case5,@case6,@case7,@case8,@case9]
	end

	def play_turn(board,current_player)

    input_ko = true
    
    while input_ko
      print "#{current_player.player_name}, ton jeton est le '#{current_player.player_token}', quelle case souhaites-tu jouer ? (ex : a1) "
      case_to_play = gets.chomp.upcase

      case case_to_play
      when "A1"
          if board.ary_boardcase[0].token == '.'
              board.ary_boardcase[0].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "A2"
          if board.ary_boardcase[1].token == '.'
              board.ary_boardcase[1].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "A3"
          if board.ary_boardcase[2].token == '.'
              board.ary_boardcase[2].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "B1"
          if board.ary_boardcase[3].token == '.'
              board.ary_boardcase[3].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "B2"
          if board.ary_boardcase[4].token == '.'
              board.ary_boardcase[4].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "B3"
          if board.ary_boardcase[5].token == '.'
              board.ary_boardcase[5].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "C1"
          if board.ary_boardcase[6].token == '.'
              board.ary_boardcase[6].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "C2"
          if board.ary_boardcase[7].token == '.'
              board.ary_boardcase[7].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "C3"
          if board.ary_boardcase[8].token =='.'
              board.ary_boardcase[8].token  = current_player.player_token
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      else 
          puts "erreur de case"
      end
    end
    end


	def victory?(board)
		
		# test combinaison horizontale
		# si cases sont identiques
		if board.ary_boardcase[0].token == 'X' && board.ary_boardcase[1].token == 'X' && board.ary_boardcase[2].token == 'X'
			return true
		end
		if board.ary_boardcase[0].token == 'O' && board.ary_boardcase[1].token == 'O' && board.ary_boardcase[2].token == 'O'
			return true
		end
		if board.ary_boardcase[3].token == 'X' && board.ary_boardcase[4].token == 'X' && board.ary_boardcase[5].token == 'X'
			return true
		end
		if board.ary_boardcase[3].token == 'O' && board.ary_boardcase[4].token == 'O' && board.ary_boardcase[5].token == 'O'
			return true
		end
		if board.ary_boardcase[6].token == 'X' && board.ary_boardcase[7].token == 'X' && board.ary_boardcase[8].token == 'X'
			return true
		end
		if board.ary_boardcase[6].token == 'O' && board.ary_boardcase[7].token == 'O' && board.ary_boardcase[8].token == 'O'
			return true
		end

		# test combinaison verticale
		# si cases sont identiques
		if board.ary_boardcase[0].token == 'X' && board.ary_boardcase[3].token == 'X' && board.ary_boardcase[6].token == 'X'
			return true
		end
		if board.ary_boardcase[0].token == 'O' && board.ary_boardcase[3].token == 'O' && board.ary_boardcase[6].token == 'O'
			return true
		end
		if board.ary_boardcase[1].token == 'X' && board.ary_boardcase[4].token == 'X' && board.ary_boardcase[7].token == 'X'
			return true
		end
		if board.ary_boardcase[1].token == 'O' && board.ary_boardcase[4].token == 'O' && board.ary_boardcase[7].token == 'O'
			return true
		end
		if board.ary_boardcase[2].token == 'X' && board.ary_boardcase[5].token == 'X' && board.ary_boardcase[8].token == 'X'
			return true
		end
		if board.ary_boardcase[2].token == 'O' && board.ary_boardcase[5].token == 'O' && board.ary_boardcase[8].token == 'O'
			return true
		end

		# test combinaison diagonale
		# si cases sont identiques
		if board.ary_boardcase[0].token == 'X' && board.ary_boardcase[4].token == 'X' && board.ary_boardcase[8].token == 'X'
			return true
		end
		if board.ary_boardcase[0].token == 'O' && board.ary_boardcase[4].token == 'O' && board.ary_boardcase[8].token == 'O'
			return true
		end
		if board.ary_boardcase[2].token == 'X' && board.ary_boardcase[4].token == 'X' && board.ary_boardcase[6].token == 'X'
			return true
		end
		if board.ary_boardcase[2].token == 'O' && board.ary_boardcase[4].token == 'O' && board.ary_boardcase[6].token == 'O'
			return true
		end

	end
end