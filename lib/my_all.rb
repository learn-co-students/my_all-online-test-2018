require 'pry'

nums = [2,3,4]
def my_all?(collection)
    i = 0
    return_values = []
    while i < collection.length
        return_values << yield(collection[i])
        i += 1
    end
    binding.pry
    if return_values.include?("false")
        false
    else
        true
    end
end

my_all?(nums) {|num| num.even?}