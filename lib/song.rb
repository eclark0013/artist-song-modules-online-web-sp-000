require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramble


  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
