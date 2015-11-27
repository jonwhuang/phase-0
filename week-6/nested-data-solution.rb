# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

#attempts:p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

#attempts: p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

#attempts: p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
=begin
number_array.map! {|element|
  if element.kind_of?(Integer)
    element += 5
  else
    element.map! {|number| number + 5}
  end
  }
=end

# Refactored:

number_array.map! {|element|

  element.kind_of?(Integer) ? element += 5 : element.map! {|number| number + 5}
  }

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Reflection:
=begin
What are some general rules you can apply to nested arrays?
You can access nested arrays by using the index number of the main array and subarrays. Accessing only the main array will return nested arrays in indexes.
What are some ways you can iterate over nested arrays?
You can iterate over nested arrays using enumerable methods within other enumerable methods, like using .each inside another .each method to access arrays within another array.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I re-used the enumerable method #map to make changes to each element in the array, as well as any nested arrays. It was a good option because it will run the block for each element of the array, and by using destructive #map, we are able to change the original array.
=end