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

  def songs
    Song.all.select{|singles| singles.artist == self}
  end

  def new_song(title, genre_name)
    Song.new(title, self, genre_name)
  end

  def genres
    songs.map{|singles| singles.genre}
  end
end