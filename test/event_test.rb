require './test/test_helper'

class EventTest < Minitest::Test
  def test_event_class_exists
    event = Event.new("Met Gala", [24, 30, 18, 20, 41])

    assert_instance_of Event, event
  end

  def test_ages_is_array
    event = Event.new("Met Gala", [24, 30, 18, 20, 41])

    assert event.ages.kind_of?(Array)
  end

  def test_can_find_max_age
    event = Event.new("Met Gala", [24, 30, 18, 20, 41])

    assert_equal 41, event.max_age
  end

  def test_can_find_average_age
    event = Event.new("Met Gala", [24, 30, 18, 20, 41])

    assert_equal 26.6, event.average_age
  end

  def test_can_find_standard_deviation_in_ages
    event = Event.new("Met Gala", [24, 30, 18, 20, 41])

    assert_equal 8.28, event.standard_deviation_age
  end
end
