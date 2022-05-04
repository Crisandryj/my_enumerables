module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    n = 0
    while n < self.length
      yield(self[n])
      n+=1
    end 
    self
  end 

  def my_all
    n = 0
    while n < self.length 
    yield(self[n])
      true
    else
      false
    end 
    n+=1
    end
    
  end 
end
