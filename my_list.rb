require_relative 'my_enumerable'

class MyList
  include MyEnumerable



  def initialize(*items)
    @list = items
  end
end

def each(&block)
  @list.each(&block)
end

list = MyList.new(1, 2, 3, 4, 5, 6)

puts(list.all? { |x| x < 7 })
# true
puts(list.all? { |e| e > 6 })
# false
puts(list.any? { |e| e == 3 })
# true
puts(list.any? { |e| e == 7 })
# false
print(list.filter(&:even?))
# [2, 4, 6]
