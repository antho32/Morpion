class Player
    attr_accessor :player_name, :player_token
  
    
    def initialize
      @player_name = gets_name
      @player_token = gets_token
  
  
    end
  
    def show_state
      puts "Le joueur #{@player_name} joue avec le jeton '#{@player_token}'"
    end
  
    private
    def gets_name
      puts "Quel ton nom ? "
      name = gets.chomp  
    end
  
    def gets_token
      
      puts"Quel jeton souhaites-tu ? (X ou O) "
      token = gets.chomp.upcase
      while token != "X" && token != "O"
        puts "---> erreur de saisie: soit X ou O."
        puts "Quel jeton souhaites-tu ? (X ou O) "
        token = gets.chomp.upcase
      end
      return token
    end
  
end