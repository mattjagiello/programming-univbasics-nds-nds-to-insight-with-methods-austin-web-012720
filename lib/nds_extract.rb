$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
#  index = 0
#  movie_count = director_data[:movies].count
#  while index < movie_count do
#    total += director_data[:movies][index][:worldwide_gross]
#    index += 1
#  end
  array = []
  director_data.each do |value|
      array << value1
    end
  end
  return array
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  row_index = 0
  while row_index < nds.length do
    director_data = nds[row_index]
    result[nds[row_index][:name]] = gross_for_director(director_data)
    row_index += 1
  end
  return result
end
