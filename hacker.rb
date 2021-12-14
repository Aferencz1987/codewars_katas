def solution(ratings)
  array = []
until ratings.count == 0
  step_1 = ratings.combination(2).min_by do |a,b|
    (a - b).abs
  end
    array.push((step_1[0]-step_1[1]).abs)
    # require "pry"; binding.pry
    ratings.each do |number|
      require "pry"; binding.pry
      if step_1.any?(number)
        ratings.find(number)
      end
  end
end

  # step_2 = ratings.combination(2).min_by do |a,b|
  #   (a - b).abs
  # end
  # array.push((step_2[0]-step_2[1]).abs)
  #
  # result = array[0]+array[1]
require "pry"; binding.pry
end



p solution([2,5,6,10,7,6,7,9,7,7])



#
# def minimizeBias(ratings)
#   array = []
#
#   step_1 = ratings.combination(2).min_by do |a,b|
#     (a - b).abs
#   end
#   array.push((step_1[0]-step_1[1]).abs)
#   ratings.each do |number|
#     if step_1.any?(number)
#       ratings.delete(number)
#       step_1.delete(number)
#     end
#   end
#   step_2 = ratings.combination(2).min_by do |a,b|
#     (a - b).abs
#   end
#   array.push((step_2[0]-step_2[1]).abs)
#
#   result = array[0]+array[1]
#
#   result
# end
