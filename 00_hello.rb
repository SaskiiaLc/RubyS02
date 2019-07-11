def say_hello(nom)
    puts "Bonjour," + nom
end

def ask_first_name
 puts "Quel est ton prénom ?"
 print ">"
 nom = gets.chomp
 return nom

end

nom = ask_first_name
say_hello(nom)

