class Artist
    
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end 
    
    def songs
        array = []
        Song.all.collect{|song| array << song if song.artist == self}
        array
    end 
    
    def add_song(song)
        song.artist = self 
    end 
    
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
    
    def self.song_count
        counter = 0
        Song.all.each{ |song| counter += 1}
        counter
    end 

end 