$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  array = []
  director_data[:movies].each do |value|
    value.each do |key, value1|
      total += value1 if key == :worldwide_gross
    end
  end
  return total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.each do |value|
    value.each do |name, value1|
      result[:name] = name
      puts result
    end
  end
#  row_index = 0
#  while row_index < nds.length do
#    director_data = nds[row_index]
#    result[nds[row_index][:name]] = gross_for_director(director_data)
#    row_index += 1
#  end
  return result
end
