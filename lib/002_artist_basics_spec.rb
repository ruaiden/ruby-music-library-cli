class Artist
    require_relative "../config/environment.rb"
    # extend Concerns::Findable     

    attr_accessor :name, :songs, :genres

    @@all =[]

    def initialize(name)
        @name = name
        @songs = []
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
        Artist.new(name)
    end 

    def self.songs
        @@all.artist
    end 

    # def add_song(song)
    #     @songs << song
    # end 

    def artist=(artist)
        @artist = artist
    end 

    def add_song(song)

        @songs << song
        
        song.artist = self unless song.artist
        
    end
        
    def self.genres
        @@all.genres.uniq
    end 
    # def add_songs(songs)
        
    #     songs.each { |song| add_song(song) }
        
    # end
        

    # def genre(genres)
    #     @genre = genres
    #     genre.artist = self unless genre.artist
    #    end 

end