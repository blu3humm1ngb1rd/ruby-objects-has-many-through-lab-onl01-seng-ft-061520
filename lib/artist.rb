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
  
  def new_song(song, genre)
    Song.new(song, self, genre)
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def genres 
    Song.all.select do |song|
      if song.artist == self 
       song.genre 
     end 
   end 
  end 
  
end 