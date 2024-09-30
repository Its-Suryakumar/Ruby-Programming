def evaluate_expression(expression)
    begin
      eval(expression)
    rescue StandardError => e
      return nil
    end
  end
  
  def balanced_parentheses?(str)
    stack = []
    brackets = { '(' => ')', '{' => '}', '[' => ']', '<' => '>' }
    positions = []
    expression = ""
  
    str.each_char.with_index do |char, index|
      if brackets.keys.include?(char)
        stack.push(char)
        positions.push(index) 
      elsif brackets.values.include?(char)
        last_open = stack.pop
        if last_open.nil? || brackets[last_open] != char
          return "Mismatch at position #{index + 1}"
        end
        positions.pop 
      else
        expression << char unless char.match?(/[()\[\]{}<>]/)
      end
    end
  
    if stack.empty?
      result = evaluate_expression(expression.strip)
      return result.nil? ? true : result
    else
      return "Mismatch at position #{positions.last + 1}"
    end
  end
  
  puts balanced_parentheses?("(1+2)*{3+4}")   
  puts balanced_parentheses?("a ( b c ) d")   
  puts balanced_parentheses?("{[<>]}")        
  puts balanced_parentheses?("{[>]}")         