class Genre


    require_relative "../config/environment.rb"
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs =[]
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
        Genre.new(name)

    end 
    
end 