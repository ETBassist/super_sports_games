ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
ages_mean = ages.sum / ages.length.to_f

subtracted = ages.map {|age| age - ages_mean }

subtracted = subtracted.map {|age| age.round(2) }

squared = subtracted.map {|age| age ** 2 }
result = squared.sum / ages.length

standard_deviation = Math.sqrt(result).round(2)
p standard_deviation
# When you find the standard deviation, print it out
