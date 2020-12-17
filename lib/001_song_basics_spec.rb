class Song

    # require_relative "../config/environment.rb"
    # extend Concerns::Findable 

    attr_accessor :name, :artist, :genre
     

    @@all = []

    def initialize(name,artist="artist",genre ="genre")
        @name = name
        @artist=artist
        @genre = genre
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.destroy_all
        self.all.clear
    end

    def save
        @@all << self
    end 

    def self.create(name)
        Song.new(name)
    end 

    def songs
        @@all
    end 


    def artist=(artist)
        @artist = artist
        artist.add_song(self) unless artist.songs.include?(self)
    end
    
    def self.find_by_name(name)
        self.all.find do |x| 
            x.name == name
        end
    end 
    
    def self.find_or_create_by_name(name)
        self.find_by_name(name) || self.create(name)
    end 
end 