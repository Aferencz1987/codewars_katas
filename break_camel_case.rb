def solution(string)
  split_string = string.split('')
  uppercase_ordinal_values = (65..90)
  new_array = []
  split_string.each do |element|
    if uppercase_ordinal_values.include?(element.ord)
      new_element = " " + element
      new_array.push(new_element)
    else
      new_array.push(element)
    end
  end
  new_array.join
end

example = ""
# space = " "
# p space.ord
p solution(example)

# Complete the solution so that the function will break up camel casing,
# using a space between words.
#
# Example
# "camelCasing"  =>  "camel Casing"
# "identifier"   =>  "identifier"
# ""             =>  ""
