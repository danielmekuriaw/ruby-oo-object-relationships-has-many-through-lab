class Genre
    @@all = []

    attr_accessor :name

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select{
            |song| song.genre == self
        }
    end

    def artists
        array = []
        Song.all.each{
            |song| array << song.artist
        }
        array
    end

end
