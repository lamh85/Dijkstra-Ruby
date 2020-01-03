Create table of three columns:

|Node | Shortest from A | Previous Node|
------|-----------------|--------------|
|A | Infinity | null |
|B | Infinity | null |
|etc...|

Create a list of unvisited nodes:
```ruby
unvisited_master = [A, B, C, D, E]
```
Iterate:
```ruby
# Start with default node
current_node = unvisited_master[0]

# Identify the neighbours
neighbours = get_neighbours(current_node)

# Update the shortest path for all the neighbours
batch_update_shortest(neighbours, current_node)

# Remove the current node from the list of unvisited nodes
delete_from_unvisited_master(current_node)

# Move the cursor to the next node
current_node = get_closest_neighbour(current_node)
```