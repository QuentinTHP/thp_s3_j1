require "pry" 

class User
    attr_writer :mastercard # Les accés sont toujours a écrire en haut de la classe
    attr_reader :birthdate
    attr_accessor :email
    def greet
        puts "Bonjour, monde !"
    end

    def say_hello_to_someone(first_name)
        puts "Bonjour, #{first_name}"
    end

    def show_itself
        print "Voici l'instance : "
        puts self 
    end

    def update_email(email_to_update)
        @email = email_to_update
    end

    def read_email
        return @email
    end

    def read_mastercard
        return @mastercard
    end

    def update_birthdate(birthdate_to_update)
        @birthdate = birthdate_to_update
    end


end #Fin de ma classe


julie = User.new
jean = User.new

julie.say_hello_to_someone("Patrick")
jean.say_hello_to_someone("Marie")

julie.show_itself #=> va produire un résultat du genre "Voici l'instance : #<User:0x000055701febc118>"
jean.show_itself #=> va produire un résultat du genre "Voici l'instance : #<User:0x000055701ff1c978>"

julie.read_email #cette ligne doit te retourner "nil" car par défaut, @email n'existe pas
jean.read_email  #idem

julie.update_email("julie@julie.com") #on change la valeur du @email de julie
jean.update_email("jean@jean.com") #idem pour julien

puts julie.read_email # tu devrais récupérer cette fois l'email: "julie@julie.com"
puts jean.read_email # idem avec "jean@jean.com"

julie.mastercard = "4242 4242 4242 4242" # la variable est bien sauvegardée dans l'objet
# julie.mastercard # par contre on ne peut pas la lire facilement
julie.read_mastercard # on a créé une méthode spécifique pour la lire. Ici ça retourne : => "4242 4242 4242 4242"

julie.update_birthdate("06/01/1991") #Cette méthode permet de rattacher la date de naissance à l'instance => Date de naissance sauvegardée !

julie.birthdate # on arrive bien à la lire. Ça retourne : => "06/01/1991"
#julie.birthdate = "06/01/1991" #là on a une erreur. Impossible de la modifier ainsi

julie.email = "julie@julie.com"
puts julie.email #=> "julie@julie.com"


binding.pry 
puts "end of file"