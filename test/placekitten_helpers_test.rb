require 'placekitten'
require 'test/unit'

class KittenRailsTest < Test::Unit::TestCase
  include PlaceKitten::Helpers
  def test_placekitten_helper
    image = placekitten(400, 500)
    assert_equal "http://placekitten.com/400/500", image
  end

  def test_placekitten_gray_helper
    image = placekitten_gray(400, 500)
    assert_equal "http://placekitten.com/g/400/500", image
  end

  def test_placekitten_grayscale_helper
    image = placekitten_grayscale(400, 500)
    assert_equal "http://placekitten.com/g/400/500", image
  end
end
