  require "pry"

class User
  attr_accessor :email
  @@user_count = 0 # on initialise la variable de classe qui sera un compteur du nombre d'instance



  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1 # # un utilisateur vient d'être créé : on ajoute donc 1 au compteur
    puts "Email :Bienvenu !!"
  end

  def self.count
    return @@user_count
  end

end  # Fin de ma class 

# julie = User.new("julie@julie.com") #dès le départ, tu rattaches un email à l'instance et affiche un message
#=> "Email : Bienvenue !!"
# puts julie.email #on vérifie que l'email est bien enregistré. ok, ça retourne => "julie@julie.com"
# jean = User.new #tu vas avoir une erreur car tu as oublié l'email => ArgumentError (wrong number of arguments (given 0, expected 1))

binding.pry 
puts "end of file"