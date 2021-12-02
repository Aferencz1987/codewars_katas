def solution(s)
  upper = []
  lower = []
  s.split('').each do |letter|
    if letter.ord >= 97
      lower.push(letter)
    else
      upper.push(letter)
    end
  end
  new_up = upper.uniq
  new_low = lower.uniq

  return "NO" if new_up.length == 0 || new_low.length == 0

  final = new_up.map do |letter|
    if new_low.include?(letter.downcase)
      letter
    end
  end

  return "NO" if final.length == 0
  final.compact.sort.last
end

puts solution('aaBabcDaA')








# def solution(d, x)
#   d.each do |level|
#
# end
#
# puts solution([5, 8, 2, 7], 3)
#
#
#
#
#
# # day_count = 0
# # d.each_cons(2) do |level|
# # diff = level[0] - level[1]
# # if diff.abs > x
# #   day_count += 1
# # end
# # end
# # day_count
