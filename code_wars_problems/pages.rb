def page_digits(pages)
  return pages if pages < 10
  split_number = pages.to_s.split('')
  places = (split_number.count) - 1
  base_num = 9
  multiplyer = 1
  total = 0
  places.times do
    digit_count = base_num * multiplyer
    total += digit_count
    base_num = base_num * 10
    multiplyer += 1
  end

  array = []
  (multiplyer - 1).times do
    array.push(9)
  end
  pages_with_counted_digits = array.join.to_i
  uncounted_pages = pages - pages_with_counted_digits

  total += uncounted_pages * (multiplyer)
  total
end

pages = 12
p page_digits(pages)

# def page_digits(pages)
#   # divide it by
#   # 1 to 9 1 9
#   # 9 to 99 2 90
#   # 100 to 999 3 900
#   # 1000 to 9999 4 9000
#   # 10000 to 99999 5 90000

#   #
#   #
#   number = [8]
#   counter = 0
#
#   if pages > 9
#     split_number = pages.to_s.split('')
#     places = split_number.count
#     counter +=
#
#
# number = [8]
#   if pages > 9
#     split_number = pages.to_s.split('')
#     places = split_number.count
#     places.times do
#       number.push(9)
#     end
#     require "pry"; binding.pry
#   end
#
#
#   return pages if pages < 9
#   # if pages > 9
#   counter = 0
#   # pages.each do |page|
#   #   page.count
#
#
#   require "pry"; binding.pry
# end


# multiplyer = 2
# base_pages = 9
# outter_limit = 100
# total = 0
# starting_point = 90
# return pages if pages < 10
# return total + ((pages - 9) * multiplyer) if pages > base_pages && pages < outter_limit
# split_number = pages.to_s.split('')
# places = (split_number.count) - 1
#
# places.times do
#   if starting_point == 90
#     total += starting_point * multiplyer
#     starting_point = pages - 99
#     multiplyer += 1
#   else
#     total += starting_point * multiplyer
#     starting_point = pages - starting_point
#     multiplyer += 1
#   end
# end
# total

# Johnny is working as an intern for a publishing company, and was tasked with cleaning up old code.
# He is working on a program that determines how many digits are in all of the page numbers
# in a book with pages from 1 to n (inclusive).
#
# For example, a book with 4 pages has 4 digits (one for each page) while a 12-page
# book has 15 (9 for 1-9, plus 2 each for 10, 11, 12).
#
# Johnny's boss, looking to futureproof, demanded that the new program be able to handle books
# up to 400,000,000,000,000,000 pages.
