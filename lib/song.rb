require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end


  def artist=(artist)
    @artist = artist
  end

end
