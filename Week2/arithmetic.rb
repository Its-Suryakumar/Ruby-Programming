class Arithmetic
    def add
        a = gets.chomp.to_i
        b = gets.chomp.to_i
        c = a+b
        puts "A+B = #{c}"
    end

    def subtract
        a = gets.chomp.to_i
        b = gets.chomp.to_i
        c = a-b
        puts "A-B = #{c}"
    end

    def multiply
        a = gets.chomp.to_i
        b = gets.chomp.to_i
        c = a*b
        puts "A*B = #{c}"
    end

    def divide
        a = gets.chomp.to_i
        b = gets.chomp.to_i
        c = a/b
        puts "A/B = #{c}"
    end

    def modulus
        a = gets.chomp.to_i
        b = gets.chomp.to_i
        c = a%b
        puts "A%B = #{c}"
    end
end

arr = Arithmetic.new
arr.add
arr.subtract
arr.multiply
arr.divide
arr.modulus