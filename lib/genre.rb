class Genre 
  
  attr_accessor :name 
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << name 
  end 

  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self 
    end 
  end 

  def artist 
    Artist.all.select do |song|
      song.artist == self 
    end 
  end 
  
end 