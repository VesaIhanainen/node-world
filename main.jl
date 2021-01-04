include("World.jl")
using Random
function asd()
rng = MersenneTwister(0);
adjacency_list = Vector{Union{Vector{Union{Nothing,World.GraphNode}},Nothing}}(nothing,1)

first_node = World.GraphNode(0,0,World.Terrain(1))
neighboring_nodes = Vector{Union{Nothing,World.GraphNode}}(nothing,1)
for xpos in 1:2
    for ypos in 1:2
        new_node = World.GraphNode(xpos,ypos,World.Terrain(1)) 
        if (neighboring_nodes[end] == nothing) 
            neighboring_nodes[end] = new_node
        else
            push!(neighboring_nodes,new_node)
        
        end
    end
end
first_list = Vector{Union{Nothing,World.GraphNode}}(nothing,1)
first_list[1] = pop!(neighboring_nodes)
adjacency_list[1] = first_list
for node in neighboring_nodes
    push!(adjacency_list[1],node)
end
number_graph_nodes = length(adjacency_list[1])
am = zeros(Int8,number_graph_nodes,number_graph_nodes)
i::Int = 1
j::Int = 1
for lists in adjacency_list
    if(j > 0) am[j,1] = 1
    for nodes in lists
        if ( i != j) 
            am[i,j] = 1
        end
        println(i)
        println(j)
        j += 1
    end
    i += 1
    j = 1
end
print(am)
end

asd()
