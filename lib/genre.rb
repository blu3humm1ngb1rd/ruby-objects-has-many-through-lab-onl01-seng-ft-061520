class Genre 
  
  attr_accessor :name 
  
  @@all = []

  def initialize(name)
    @name = name
  end 

  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre 
    end 
  end 
  
  
end 