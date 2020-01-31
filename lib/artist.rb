class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self
  end
  
  def genres
    songs = Song.all.select {|song| song.artist == self}
    songs.collect{|song| song.genre}
  end
  
  def self.all 
    @@all 
  end
end