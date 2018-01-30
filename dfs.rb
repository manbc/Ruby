#depth first search implementation
$order = 0
def depth_first_search(matrix, vertices_array, vertex)
  $order += 1
  vertices_array[vertex] = $order
  for i in 0...matrix.length
    # if there is an edge and the vertex is not visited
    if (matrix[vertex][i] == 1 && vertices_array[i] == 0)
      depth_first_search(matrix, vertices_array, i)
    end
  end
end

#usage: can only be used after depth_first_search has been used
def display_order(vertices_hash)
  vertices_hash.each { |key, value|
    puts "Vertex #{key} was visited: #{value}"
  }
end
          #vertices: a  b  c  d  e  f
ADJACENCY_MATRIX = [[0, 0, 1, 1, 1, 0],
                    [0, 0, 0, 0, 1, 1],
                    [1, 0, 0, 1, 0, 1],
                    [1, 0, 1, 0, 0, 0],
                    [1, 1, 0, 0, 0, 1],
                    [0, 1, 1, 0, 1, 0]]

vertices = Hash.new(0)
for i in 0...6
  vertices[i] = 0
end
vertices.each { |key, value|
  if value == 0
    depth_first_search(ADJACENCY_MATRIX, vertices, key)
  end
}

display_order(vertices)
               #a b c d
test_matrix = [[0,1,0,0],
               [1,0,1,1],
               [0,1,0,0],
               [0,1,0,0]]
$order = 0
vertices2 = Hash.new(4)
for i in 0...4
  vertices2[i] = 0
end
vertices2.each { |key, value|
  if value == 0
    depth_first_search(test_matrix, vertices2, key)
  end
}

puts "Test Matrix"
display_order(vertices2)
