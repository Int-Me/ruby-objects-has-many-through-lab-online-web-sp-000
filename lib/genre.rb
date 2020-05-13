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

  def new_song(name, artist, genre)
    song = Song.new(name, artist, self)
  end

  def songs
    Song.all.select do  |song|
      song.genre == self
    end
  end

  def artists
    @set = []
    self.songs.each do |song|
      @set << song.artist
    end
  end
end
