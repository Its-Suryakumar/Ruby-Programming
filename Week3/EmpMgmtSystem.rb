class Employee
    def initialize(name, base_pay)
      @name = name
      @base_pay = base_pay
    end
  
    def calculate_net_salary
      hra, da, tax = calculate_slabs
  
      gross_salary = @base_pay + hra + da
      net_salary = gross_salary - tax
  
      net_salary
    end
  
    def display_salary
      net_salary = calculate_net_salary
      puts "#{@name}'s Net Salary: Rs. #{net_salary}"
    end
  
    private
  
    def calculate_slabs
      case @base_pay
      when 0..20000
        hra = 0.20 * @base_pay  # 20% of base pay
        da = 0.10 * @base_pay   # 10% of base pay
        tax = 0.05 * @base_pay  # 5% of base pay
      when 20001..50000
        hra = 0.25 * @base_pay  # 25% of base pay
        da = 0.15 * @base_pay   # 15% of base pay
        tax = 0.10 * @base_pay  # 10% of base pay
      else
        hra = 0.30 * @base_pay  # 30% of base pay
        da = 0.20 * @base_pay   # 20% of base pay
        tax = 0.15 * @base_pay  # 15% of base pay
      end
      [hra, da, tax]
    end
  end
  
  puts "Enter employee name:"
  name = gets.chomp
  puts "Enter base pay:"
  base_pay = gets.chomp.to_f
  employee = Employee.new(name, base_pay)
  employee.display_salary
  