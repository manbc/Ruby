

class Stack
  @@CAPACITY = 100
  @data
  @size 
  
  def initialize()
    @data = Array.new(@@CAPACITY)
    @size = 0
  end
  
  def is_empty?()
    @size == 0
  end

  def is_full?()
    @size == @@CAPACITY
  end

  # pushes element to the top of the stack
  # condition: stack must not be full
  def push(data)
    if (is_full?())
      puts "Stack is full"
      return
    end
    @data[@size] = data
    @size += 1
  end

  # removes the element on top of the stack
  # condition: stack must not be empty
  def pop()
    if (is_empty?())
      puts "Stack is empty"
      return
    end
    @size -= 1
  end

  # returns the element on top of the stack
  def top()
    return @data[@size - 1]
  end

  def empty()
    @size = 0
  end
end



#stack tests
stack = Stack.new

stack.push("hello")
stack.push("world")
stack.push("my")
stack.push("good friend")
while (!stack.is_empty?()) do
  puts stack.top
  stack.pop
end

#empty stack test
puts "stack is empty is now empty calling pop"
stack.pop

#full stack test
x = 0
while(!stack.is_full?())
  stack.push(x)
  x += 1
end
puts "stack is now full calling push"
stack.push("hello world")

while (!stack.is_empty?()) 
  puts stack.top
  stack.pop
end
