require 'placekitten'
require 'test/unit'

class KittenTest < Test::Unit::TestCase
  def test_width_height
    image = PlaceKitten.image(300, 200)
    assert_equal "http://placekitten.com/300/200", image
  end

  def test_image_alias
    image = PlaceKitten.kitten(300, 200)
    assert_equal "http://placekitten.com/300/200", image
  end

  def test_grayscale_arg
    image = PlaceKitten.image(100, 300, true)
    assert_equal "http://placekitten.com/g/100/300", image
  end

  def test_grayscale_method
    image = PlaceKitten.grayscale(200, 400)
    assert_equal "http://placekitten.com/g/200/400", image
  end

  def test_grayscale_method_alias
    image = PlaceKitten.gray(200, 400)
    assert_equal "http://placekitten.com/g/200/400", image
  end
end
