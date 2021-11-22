def page_digits(pages)
  multiplyer = 2
  base_pages = 9
  outter_limit = 100
  total = 9
  starting_point = 90
  return pages if pages < 9
  # return total + ((pages - 9) * multiplyer) if pages > base_pages && pages < outter_limit
  split_number = pages.to_s.split('')
  places = (split_number.count) - 1

  places.times do
    require "pry"; binding.pry
    if starting_point == 90
      total += starting_point * multiplyer
      starting_point = pages - 99
      multiplyer += 1
    else
      total += starting_point * multiplyer
      starting_point = pages - starting_point
      multiplyer += 1

      require "pry"; binding.pry
    end
    # require "pry"; binding.pry
  end
  total
end

pages = 1247   #answer is 633
p page_digits(pages)


# Johnny is working as an intern for a publishing company, and was tasked with cleaning up old code.
# He is working on a program that determines how many digits are in all of the page numbers
# in a book with pages from 1 to n (inclusive).
#
# For example, a book with 4 pages has 4 digits (one for each page) while a 12-page
# book has 15 (9 for 1-9, plus 2 each for 10, 11, 12).
#
# Johnny's boss, looking to futureproof, demanded that the new program be able to handle books
# up to 400,000,000,000,000,000 pages.


# def page_digits(pages)
#   # divide it by
#   # 1-9 1 8
#   # 10-99 2 89
#   # 100-999 3 899
#   # 1000-9999 4 8999
#   # 10000 -99999 5 89999
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
#
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
