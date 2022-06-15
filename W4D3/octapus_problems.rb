require "byebug"

# O n^2 time
# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths


fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

 def sluggish(fishes)

    longest = ""
    fishes.each_with_index do |fish1, idx1|
        fishes.each_with_index do |fish2, idx2|
            if fish1 > fish2 #&& idx2>idx1
                longest = fish1
            end
        end
    end
  longest
end
 p sluggish(fish)

#  Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the sorting complexity demo from the Sorting Complexity reading. Remember that Big O is classified by the dominant term.

def dominant_oct(fishes)
    pivot = fishes[0]
    debugger
    len = pivot.length
    left = fishes[1..-1].select { |fish| fish.length < len }
    right = fishes[1..-1].select { |fish| fish.length >= len }
    sorted = dominant_oct(left) + [pivot] + dominant_oct(right)
    
end
fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
# p dominant_oct(fish)


# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def clever(fishes)
    pivot = fishes.unshift
    fishes.each do |fish|
        if fish.length > pivot.length
            pivot = fish
        end
    end    
    pivot
end
p clever(fish)


# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

#p slow_dance("up", tiles_array)
# # > 0

def slow_dance(direction, tiles_array)
    tiles_array.index(direction)


end
p slow_dance("up", tiles_array)

p slow_dance("right-down", tiles_array)
# > 3
# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.
def constant_dance(direction, tiles_array)
    hash = {}
    tiles_array.each_with_index do |tile, i|
        hash[tile] = i
    end
    hash[direction]


end

p constant_dance("right-down", tiles_array)
