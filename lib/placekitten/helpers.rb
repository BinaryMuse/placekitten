module PlaceKitten::Helpers
  def placekitten(width = 200, height = 300, grayscale = false)
    PlaceKitten.image(width, height, grayscale)
  end

  def placekitten_gray(width = 200, height = 300)
    PlaceKitten.grayscale(width, height)
  end
end
