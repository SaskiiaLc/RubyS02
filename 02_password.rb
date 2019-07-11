def signup
    puts "Choisis ton mot de passe !"
    print ">"
    password = gets.chomp
    return password
end

def welcome_screen
    puts "Bienvenue dans mon jardin secret"
end

def login(password)
    puts "Quel est ton mot de passe ?"
    print ">"
    input = gets.chomp
    while input != password
        if input != password
            puts "Essai encore"
            print ">"
            input = gets.chomp
        end
    end
end

def perform
    password = signup
    login(password)
    welcome_screen
end

perform