require 'pry'

# require_relative '../lib/concerns/findable'
# require_relative '../lib/concerns/memorable'
# require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'

module Memorable

  module ClassMethods
    def self.find_by_name(name)
      @@all.detect{|a| a.name == name}
    end

    def self.all
      @@all
    end

    def self.reset_all
      self.all.clear
    end

    def self.count
      self.all.count
    end
  end

  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end
