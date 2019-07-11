def random
    num = rand(1..6)
    return num
end

def main
    count = 0
    try = 0
    while count < 10
        num = random
            puts "> #{num}"
        if num == 1
            if count != 0
                count -= 1
                puts "Tu descend d'une marche"
                puts "Tu es à la marche: #{count}"
            else
                puts "Tu es déjà au fond du trou."
                puts "Tu es à la marche: #{count}"
            end
        elsif num == 2 || num == 3 || num == 4
            puts "Reste dans le noir."
            puts "Tu es à la marche: #{count}"
        else
            puts "Monte une marche."
            count += 1
            puts "Tu es à la marche: #{count}"
        end
        try += 1
    end
    puts "You WIN"
    return try
end

def perfom
    puts "Bienvenue dans notre jeu de l'ascenseur fou !"
    puts "Prends le dé et lance le, bonne chance."
    result = 0
    100.times do 
        result = result + main
    end
    result = result / 100
    puts "La moyenne des 100 parties et de: #{result}"
end

perfom
