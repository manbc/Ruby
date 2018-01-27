#depth first search implementation
$count = 0
def depth_first_search(matrix, vertices_array, vertex)
  $count += 1
  vertices_array[vertex] = $count
  for i in 0...matrix.length
    # if there is an edge and the vertex is not visited
    if (matrix[vertex][i] == 1 && vertices_array[i] == 0)
      depth_first_search(matrix, vertices_array, i)
    end
  end
end

          #vertices: a  b  c  d  e  f
ADJACENCY_MATRIX = [[0, 0, 1, 1, 1, 0],
                    [0, 0, 0, 0, 1, 1],
                    [1, 0, 0, 1, 0, 1],
                    [1, 0, 1, 0, 0, 0],
                    [1, 1, 0, 0, 0, 1],
                    [0, 1, 1, 0, 1, 0]]

NUM_OF_VERTICES = 6
vertices = Hash.new(0)
for i in 0...NUM_OF_VERTICES
  vertices[i] = 0
end
vertices.each { |key, value|
  if value == 0
    depth_first_search(ADJACENCY_MATRIX, vertices, key)
  end
}

vertices.each { |key, value|
  puts "Vertex #{key} was visited: #{value}"
}
               #a b c d
test_matrix = [[0,1,0,0],
               [1,0,1,1],
               [0,1,0,0],
               [0,1,,0,]]

vertices2 = Hash.new(4)
for i in 0...4
  #vertices
end


