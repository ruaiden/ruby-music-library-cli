class MusicImporter

    def initialize(name)
        import(name)
    end 

    def import(name)
        Song.new(name)
    end 

end