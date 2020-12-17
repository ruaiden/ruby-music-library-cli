class MusicLibraryController

    attr_accessor :mp3_path

    def initialize(mp3_path)
        @mp3_path = mp3_path
    end 

    def call
        puts "Welcome"
    end 

end 