require 'thread'
#breath first search implementation returns a hash where the keys represents vertices and value represents the order they were visited
$count = 0
def breath_first_search(adjacency_matrix)
    vertices_hash = Hash.new()
    # initialize vertices hash
    for i in 0...adjacency_matrix.size 
      vertices_hash[i] = 0
    end

    for i in 0...adjacency_matrix.size
      if vertices_hash[i] == 0
        bfs(adjacency_matrix, i, vertices_hash)
      end
    end
    return vertices_hash
end

def bfs(adjacency_matrix, vertex, vertices_hash)
  $count += 1
  #mark vertex with order of visit
  vertices_hash[vertex] = $count
  queue = Queue.new
  queue.push(vertex)
  while(!queue.empty?)
    vertex = queue.pop
    for i in 0...adjacency_matrix.size
      if (adjacency_matrix[vertex][i] == 1 && vertices_hash[i] == 0)
        $count += 1
        vertices_hash[i] = $count
        queue.push(i)
      end
    end
    
  end
end


#usage: can only be used after breath_first_search has been used
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

display_order(breath_first_search(ADJACENCY_MATRIX))

