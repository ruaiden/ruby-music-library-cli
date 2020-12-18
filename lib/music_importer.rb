class MusicImporter

    attr_accessor :path
    attr_reader :files

    def initialize(path)
        @path = path
                
    end 

    def path
        @path
    end 
    
    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "")}
    end

    def import
        files.each{ |f| Song.create_from_filename(f) }
    end
end