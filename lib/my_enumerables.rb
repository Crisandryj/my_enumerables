module Enumerable
  # Your code goes here
  def my_map
    array = []
  self.my_each do |n| 
    array << yield(n)
  end  
  array
  end

  def my_all?(pattern = nil)
    block = block_given? ? -> (elem) {yield elem}: -> (elem) {pattern === elem}
    my_each {|elem| return false unless block.call(elem)}
    true
  end

  def my_count
    counter = 0
    block = block_given? ? -> (elem) {yield elem}: self.length

    end 
  end 


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
      yield self[n]
      n +=1
    end 
      self 
  end 
end 


