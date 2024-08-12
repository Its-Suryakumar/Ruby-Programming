$global = 5
class Class1
    def print_global
        puts "Class1 Value #{$global}"
    end
end

class Class2
    def print_global
        $global=7;
        puts "Class2 value #{$global}"
    end
end

class Class3
    def print_global
        puts "Class3 Value #{$global}"
    end
end

class1obj = Class1.new()
class1obj.print_global
class2obj = Class2.new()
class2obj.print_global
class3obj = Class3.new()
class3obj.print_global