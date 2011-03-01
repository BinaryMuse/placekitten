class PlaceKitten
  DEFAULT_WIDTH  = 300
  DEFAULT_HEIGHT = 300

  # Returns the URL for an optionally grayscale placekitten with
  # the given width and height. If the width is given but the height
  # is not, the image will be square.
  #
  # @param [Number] width the width of the placekitten
  # @param [Number] height the height of the placekitten
  # @param [Boolean] grayscale whether or not to make the placekitten grayscale
  def self.image(width = nil, height = nil, grayscale = false)
    if width.nil?
      width = DEFAULT_WIDTH
      height = DEFAULT_HEIGHT
    elsif height.nil?
      height = width
    end

    if grayscale
      "http://placekitten.com/g/#{width}/#{height}"
    else
      "http://placekitten.com/#{width}/#{height}"
    end
  end

  # Returns the URL for a grayscale placekitten with the given
  # width and height. If the width is given but the height
  # is not, the image will be square.
  #
  # @param [Number] width the width of the placekitten
  # @param [Number] height the height of the placekitten
  def self.grayscale(width = nil, height = nil)
    self.image(width, height, true)
  end

  class << self
    alias_method :kitten, :image
    alias_method :gray, :grayscale
  end
end
