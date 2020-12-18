class Artist
    
    extend Concerns::Findable     

    attr_accessor :name, :genres
    attr_reader :songs

    @@all =[]

    def initialize(name)
        @name = name
        @songs = []
    end 

    def self.all
        @@all
    end 

    def self.destroy_all
        self.all.clear
    end

    def save
        self.class.all << self
    end

    def self.create(name)
        artist = self.new(name)
        artist.save
        artist
        
    end 

    def self.songs
        @@all.artist
    end  

    def add_song(song)
        song.artist = self unless song.artist 
        
        if !@songs.include?(song)
            @songs << song        
        end 
        
    end
        
    def genres
     songs.collect{|song| song.genre}.uniq
    end 
    
end