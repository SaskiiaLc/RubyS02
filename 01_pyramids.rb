def half_pyramid
    caractere = "#"
    space = " "
    print "Entrez un nombre: "
    input = gets.chomp.to_i
    emptyCase = input
    input.times do |i|
        puts "#{space * (input - 1) + caractere * (i + 1)}"
        input -= 1
    end
end

half_pyramid

def full_pyramid
    caractere = "#"
    space = " "
    print "Entrez un nombre: "
    input = gets.chomp.to_i
    emptyCase = input
    i = 1 
    j = 0
    input.times do 
        puts "#{space * (input - 1) + caractere * i + caractere * j}"
        input = input - 1
        j = j + 1
        i = i + 1
    end
end
full_pyramid

def wtf_pyramid
        caractere = "#"
        space = " "
        begin
            print "Entrez un nombre impair : "
            input = gets.chomp.to_i
        end while
            input%2 == 0
        
        
        emptyCase = input
        
        i = 1 
        j = 0
        k = 1 # jumeau de i
        m = input - 1 # jumeau de n 
        n = input - 1 
        
        input.times do 
            if i <= n
            puts "#{space * n + caractere * i + caractere * j}"
            j = j + 1
            i = i + 1
            k = k + 1 # k garde la meme valeur que i
            m = m - 1 # m garde la meme valeur que n
            n = n - 1
            else 
                puts "#{space * m + caractere * k + caractere * j}" # on utilise k et m à la place de i et n pour i <= n soit vre
                m = m + 1
                j = j - 1
                k = k - 1
        
        end
    end
end
wtf_pyramid