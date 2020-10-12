require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection.push(yield(array[i]))
    i += 1
  end
  collection
end

def hello2(array)
  i = 0 
  while i < array.length
    yield(array[i])
    i += 1
  end
end 

# hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }

test_list = ["Tim", "Tom", "Jim"]

another_list = hello2(test_list) {|n| "Hey #{n}"}

compare_list = hello(test_list) {|n| "Hey #{n}"}

puts another_list
