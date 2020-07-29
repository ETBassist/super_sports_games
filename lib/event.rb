class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    @ages.sum / @ages.length.to_f
  end

  def standard_deviation_age
    ages_mean = @ages.sum / @ages.length.to_f

    subtracted = @ages.map {|age| age - ages_mean }

    subtracted = subtracted.map {|age| age.round(2) }

    squared = subtracted.map {|age| age ** 2 }
    result = squared.sum / ages.length

    Math.sqrt(result).round(2)
  end

end
