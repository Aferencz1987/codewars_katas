def solution(names)
 if names.count == 0
   text = "no one likes this"
 elsif names.count == 1
   text = "#{names[0]} likes this"
 elsif names.count == 2
   text = "#{names[0]} and #{names[1]} like this"
 elsif names.count == 3
  text = "#{names[0]}, #{names[1]} and #{names[2]} like this"
elsif names.count >= 4
  other_count = names.count - 2
  text = "#{names[0]}, #{names[1]} and #{other_count} others like this"
end
text
end
names = ["Alex", "Jacob", "Mark", "Max", "Alex", "Jacob", "Mark", "Max"]
p solution(names)

# You probably know the "like" system from Facebook and other pages. People can
# "like" blog posts, pictures or other items. We want to create the text that
# should be displayed next to such an item.
#
# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:
#
# []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
# Note: For 4 or more names, the number in "and 2 others" simply increases.
#
