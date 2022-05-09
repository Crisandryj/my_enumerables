module Enumerable
  # Your code goes here
  def my_map
    array = []
  self.my_each do |n| 
    array << yield(n)
  end  
  array
  end

  def my_all?
    block = -> (elem) {yield elem}
    my_each {|elem| return false unless block.call(elem)}
    true  
  end

  def my_count(item = nil)
    count = 0
    block = block_given? ? -> (elem) {count += 1 if yield elem} : -> (elem) {count += 1 if nil === item}
    my_each {|elem| block.call(elem)}
    count
  end 
  
  def my_any?
    block = Proc.new {|elem| return true if yield elem}
    my_each {|elem| block.call(elem)}
    false
  end 

  def my_each_with_index
    index = 0
    block = Proc.new {|elem,index| yield elem,index}
    my_each do |elem|
       block.call(elem,index) 
       index += 1
    end 
  end 

  def my_none?
    block = Proc.new {|elem| return false if yield elem}
    my_each {|elem| block.call(elem)}
    true
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


