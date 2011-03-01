module PlaceKitten::Helpers
  # @see PlaceKitten.image
  def placekitten(width = nil, height = nil, grayscale = false)
    PlaceKitten.image(width, height, grayscale)
  end

  # @see PlaceKitten.grayscale
  def placekitten_grayscale(width = nil, height = nil)
    PlaceKitten.grayscale(width, height)
  end
  alias placekitten_gray placekitten_grayscale
end
