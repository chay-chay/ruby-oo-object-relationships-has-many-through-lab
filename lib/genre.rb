class Genre
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
     #songs
     #has many songs 
    def songs
        Song.all.select{|song| song.genre == self}
    end
    #artists
    #has many artists, through songs (FAILED - 1)
    def artists 
        songs.map{|song|song.artist}
    end

end
