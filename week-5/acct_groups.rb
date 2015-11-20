

#Release 1: Pseudocode

list_of_names = ['jack_abernethy', 'mohammad_amin', 'zollie_barnes', 'reuben_brandt', 'dana_breen', 'breton_burnett', 'saundra_vanessa_castaneda', 'luis_de_castro', 'nicolette_chambers', 'kerry_choy', 'nick_davies', 'katherine_diangelo', 'adrian_diaz', 'david_diaz', 'bob_dorff', 'michael_du', 'paul_dynowski', 'jenna_espezua', 'sean_fleming', 'marcel_haesok', 'albert_hanh', 'arthur_head', 'jonathan_huang', 'thomas_huang', 'alex_jamar', 'kevin_jones', 'steven_jones', 'coleby_kent', 'caroline_kenworthy', 'calvin_lang', 'yi_lu', 'david_ma', 'sean_massih', 'tom_mchenry', 'alex_mitzman', 'lydia_nash', 'brenda_nguyen', 'matthew_oppenheimer', 'mason_pierce', 'joe_plonsker', 'mira_scarvalone', 'joseph_scott', 'chris_shahin', 'benjamin_shpringer', 'lindsey_stevenson', 'philip_thomas', 'gary_tso', 'ting_wang', 'clinton_weber', 'monique_williamson', 'regina_wong', 'hanah_yendler']

#Input: Array of names to create groups with
#Output: Array with nested arrays (groups) that contain members of each group
#Steps:
#1. Find out how many groups to create by dividing with modulus. Divide with 4 so that everyone is distributed as evenly as possible.
#2. Create the empty arrays for the groups.
#3. WHILE there are still names in the original array, choose a random index to place into a group array.
#4. Cycle through the groups while splitting into groups to ensure even groups.
#(Or set a maximum for each group and put names in until the group is filled) -won't work for numbers like 22.
#5. Nest all group arrays into one array to return

#Release 2: Initial Solution

def create_groups(list)
  if list.length < 12
    number_of_groups = list.length / 3
  else
    number_of_groups = list.length / 4
  end

  nested_array = []
  group_pointer = 0
  while group_pointer < number_of_groups
    nested_array[group_pointer] = []
    group_pointer += 1
  end
  group_pointer = 0
  while list.length > 0
    if group_pointer < number_of_groups
      nested_array[group_pointer] << list.delete(list[rand(list.length)])
      group_pointer += 1
    else
      group_pointer = 0
      nested_array[group_pointer] << list.delete(list[rand(list.length)])
      group_pointer += 1
    end
  end
  return nested_array
end

#Release 4: Refactored Solution
def create_groups(list)
  list.length < 12 ? number_of_groups = list.length / 3 : number_of_groups = list.length / 4

  nested_array = (1..number_of_groups).map {|i| []}
  group_pointer = 0

  while !list.empty?
    group_pointer = 0 if group_pointer == number_of_groups
    nested_array[group_pointer] << list.delete(list[rand(list.length)])
    group_pointer += 1
  end
  return nested_array
end

#Release 5: Driver Code
p create_groups(list_of_names)

#Release 6: Reflect

=begin
What was the most interesting and most difficult part of this challenge?
I thought the most difficult part of the challenge was figuring out how to randomize the splitting of the groups. I had a bit of trouble moving a random name into a nested array at the beginning.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
The pseudocode definitely helped a lot. More than I thought it would. Even though I didn't follow it exactly, I had the rough guideline and changed small parts based on what I was testing and found.

Was your approach for automating this task a good solution? What could have made it even better?
I think I came up with a decent approach with it. I like my end result. I really wanted to find a method that would simplify my code even further but I wasn't able to refactor it more than I already did.

What data structure did you decide to store the accountability groups in and why?
I stored them into nested arrays. This way, it will show the number of groups there are, as well as the members in each group.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned about the .map function to create all the empty nested arrays. I also shortened my code by a lot while I was cycling through the groups to distribute the names, which seemed to work pretty well.

=end