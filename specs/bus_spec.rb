require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')


class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, 'Ocean Terminal')
  end

  def test_drive_bus_sound
    assert_equal('Brum brum', @bus.drive())
  end

end
