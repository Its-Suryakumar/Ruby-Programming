#Method With Arguments
module Methods
    class MethodArg
        def sum(a,b)
            c = a+b
            puts "Sum of #{a} and #{b} is #{c}"
        end
    end
    
    class MethodNoArg
        def sum()
            a=10
            b=12
            c=30
            d = a+b+c
            puts "Sum of Non Argument Method is #{d}"
        end
    end
end     
s1 = Methods::MethodArg.new
s2 = Methods::MethodNoArg.new
s1.sum(5,3)
s2.sum()
