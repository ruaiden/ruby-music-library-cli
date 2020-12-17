require 'bundler'
Bundler.require

require_relative '../lib/001_song_basics_spec.rb'
require_relative '../lib/002_artist_basics_spec.rb'

module Concerns

    module Findable

        def self.find_by_name(name)
            self.all.find do |x| 
                x.name == name
            end
        end 
end 
end 

require_all 'lib'
