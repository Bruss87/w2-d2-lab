require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')


class BusTest < MiniTest::Test

  def setup
    passengers = Person.new('Alex', 28)
    @bus = Bus.new(22, 'Ocean Terminal')
  end

  def test_drive_bus_sound
    assert_equal('Brum brum', @bus.drive())
  end

  def test_passengers_on_bus
    assert_equal(0, @bus.passengers_on_bus())
  end

  def test_add_person_to_passengers
     passenger1 = Person.new("Mark", 28)
     assert_equal(1, @bus.pick_up(passenger1))
  end

  def test_remove_passenger
    passenger1 = Person.new("Mark", 28)
    passenger2 = Person.new("Joe", 43)
    assert_equal(1, @bus.drop_off(passenger2, passenger1))
  end

  def test_remove_all_passengers
    passenger1 = Person.new("Mark", 28)
    passenger2 = Person.new("Joe", 43)
    assert_equal(true, @bus.empty_bus(passenger2, passenger1))
  end


end
