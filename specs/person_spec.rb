require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

def setup
  @person = Person.new("John", 35)
end

  def test_get_name
    assert_equal("John", @person.name)
  end






end
