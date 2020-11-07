class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def new_song(name, genre)
        Song.new(name, self, genre) #why add self? iterates through all songs and finds the songs that belong to that artist.
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    #genres
    #has many genres, through songs (FAILED - 1)
    def genres
        #songs.map(&:genre) SAME as songs.map {|song|song.genre}
        songs.map {|song|song.genre}
    end

end
