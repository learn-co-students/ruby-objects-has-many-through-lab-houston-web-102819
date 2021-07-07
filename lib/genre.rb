class Genre
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all.push(self)
    end
  
    def self.all
      @@all
    end
  
    def songs
      Song.all do |song| song.genre == self 
       end
    end
  
    def artists
        result = []
        Song.all.each do |song|
          if(song.genre == self)
            result.push(song.artist)
          end
        end
        return result
      end
  
    # def add_song(song)
    #   songs.push(song)
    # end
  end