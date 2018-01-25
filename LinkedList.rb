#unordered linked list implementation
class LinkedList 
  attr_reader :number_of_nodes
  @header

  def initialize()
    @header = nil
    @number_of_nodes = 0
  end

  #adds to the tail end of the linked list
  def add(data)
    if (@header == nil)
      @header = Node.new(data)
    else
      current = @header
      # go to end of the linked list
      while (current.next) do
        current = current.next
      end
        current.next = Node.new(data)
    end
    @number_of_nodes += 1
  end

  def display_list
    if (@header)
      current = @header
      for i in 1..@number_of_nodes
        puts "Node #{i} contains #{current.data}"
        current = current.next
      end
    end
  end
  
  #deletes the first instance of the node containing the contents of the variable data
  def delete(data)
    if (@header == nil)
      return
    end
    

    #if data is contained in the header
    if (@header.data == data && @header.next)
      @header = @header.next
      @number_of_nodes -= 1
    elsif (@header.data == data) #header is the only node && contains the data
      @header = nil
      @number_of_nodes -= 1
    else
      current = @header.next
      previous = @header
      while (current)
        if (current.data == data)
          previous.next = current.next
          @number_of_nodes -= 1
          break
        end
        previous = current
        current = current.next
      end
    end
  end
  
  #returns a boolean value if the linked list contains the contents of variable data
  def contains?(data)
    if (@header)
      current = @header
      while (current.next)
        if (current.data == data) 
          return true
        else
          current = current.next
        end
      end
    end
    return false
  end

end

class Node 

  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end 
=begin
# add and contains test
list = LinkedList.new()
list.add("my")
list.add("name")
list.add("is")
list.add("bobby")
list.add("martin")
list.add("!")
list.display_list()
puts "it contains it!" if list.contains?("bobby")
puts "this should not output!" if list.contains?("hello world")
=end
=begin
# delete test
list2 = LinkedList.new()
list2.add(100)
list2.add(200)
list2.add(300)
list2.display_list()
puts "Deleting 200"
list2.delete(200)
list2.display_list()
puts "Deleting header"
list2.delete(100)
list2.display_list()
puts "Deleting final elment"
list2.delete(300)
list2.display_list()
puts "Readding elements"
list2.add("hello world")
list2.add("goodbye world")
list2.add("starbucks")
list2.display_list()
=end

=begin
# delete tail then add more elements test
list3 = LinkedList.new()
list3.add(123)
list3.add(456)
list3.add(789)
list3.display_list()
puts "Tail deleted"
list3.delete(789)
puts "Adding new elements"
list3.add(1000)
list3.add(2000)
list3.display_list()
=end
