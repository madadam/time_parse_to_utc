require 'test/unit'
require 'time_parse_to_utc'

class TimeParseToUtcTest < Test::Unit::TestCase
  def test_parse_to_utc_with_input_without_offset
    assert_equal Time.utc(2010, 9, 8, 14, 17, 12), Time.parse_to_utc('2010-09-08 14:17:12')
  end
  
  def test_parse_to_utc_with_input_with_offset
    assert_equal Time.utc(2010, 9, 8, 10, 17, 12), Time.parse_to_utc('2010-09-08 14:17:12 +0400')
  end

  def test_parse_to_utc_returns_nil_on_invalid_input
    assert_nil Time.parse_to_utc('choke on this!')
  end
end
