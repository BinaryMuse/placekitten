require 'placekitten'
require 'test/unit'

class KittenTest < Test::Unit::TestCase
  def test_no_params
    image = PlaceKitten.image
    assert_equal "http://placekitten.com/#{PlaceKitten::DEFAULT_WIDTH}/#{PlaceKitten::DEFAULT_HEIGHT}", image
  end

  def test_width_only
    image = PlaceKitten.image(500)
    assert_equal "http://placekitten.com/500/500", image
  end

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

  def test_grayscale_no_params
    image = PlaceKitten.gray
    assert_equal "http://placekitten.com/g/#{PlaceKitten::DEFAULT_WIDTH}/#{PlaceKitten::DEFAULT_HEIGHT}", image
  end

  def test_grayscale_width_only
    image = PlaceKitten.gray(500)
    assert_equal "http://placekitten.com/g/500/500", image
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
