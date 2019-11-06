# Artist >> Song << Genre

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

    def songs
        results = []
        Song.all.each do |song|
            if song.genre == self
                results << song
            end
        end
        return results
    end

    def artists
        results = []
        self.songs.each do |song|
            if song.genre == self
                results << song.artist
            end
        end
        return results
    end

end
