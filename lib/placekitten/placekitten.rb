class PlaceKitten
  # Returns the URL for an optionally grayscale placekitten with
  # the given width and height.
  #
  # @param [Number] width the width of the placekitten
  # @param [Number] height the height of the placekitten
  # @param [Boolean] grayscale whether or not to make the placekitten grayscale
  def self.image(width = 300, height = 200, grayscale = false)
    if grayscale
      "http://placekitten.com/g/#{width}/#{height}"
    else
      "http://placekitten.com/#{width}/#{height}"
    end
  end

  # Returns the URL for a grayscale placekitten with the given
  # width and height.
  #
  # @param [Number] width the width of the placekitten
  # @param [Number] height the height of the placekitten
  def self.grayscale(width = 300, height = 200)
    self.image(width, height, true)
  end

  class << self
    alias_method :kitten, :image
    alias_method :gray, :grayscale
  end
end
