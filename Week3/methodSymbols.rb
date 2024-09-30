    class MethodSymbols
        def hello;
            puts "Hello Suryakumar"
        end

        def bye!(fname="Surya",lname="kumar")
            puts "Bye #{fname+lname}"
        end
    end

    name = MethodSymbols.new
    name.hello;
    name.bye!
