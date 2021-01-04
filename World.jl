module World
export Terrain, GraphNode
@enum Terrain plain water forest mountain
mutable struct GraphNode
    xpos::Integer
    ypos::Integer
    terrain_type::Terrain
end

end
