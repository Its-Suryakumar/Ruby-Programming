class Relational
  def great(a,b)
    if(a>b)
      puts "#{a} is Greater"
    else
      puts "#{b} is Greater"
    end
  end

  def less(a,b)
    if(a<b)
      puts "#{a} is Smaller"
    else
      puts "#{b} is Smaller"
    end
  end
end

rel = Relational.new
rel.great(10,15)
rel.less(17,18)