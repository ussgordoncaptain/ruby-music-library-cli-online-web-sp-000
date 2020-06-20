class Song 
  @@all = []
  def initialize(name, artist=nil)
    @name = name
    if (artist != nil)
      artist.add_song(self)
    end
    
  end 
   attr_accessor :name 
  def save 
    @@all << self
  end 
  def self.all 
    return @@all
  end
  def self.create(name)
    self.new(name)
    @@all << self
  end 
  def self.destroy_all
    @@all=[]
    return @@all
  end
end
class Artist 
  @@all = []
  def initialize(name)
    @name = name 
    @songs = []
  end 
   attr_accessor :name
   def add_song(song)
     @song << song 
   end
  def save 
    @@all << self
  end 
  def self.all 
    return @@all
  end
  def self.create(name)
    self.new(name)
    @@all << self
  end 
  def self.destroy_all
    @@all=[]
    return @@all
  end
end
class Genre 
  @@all = []
  def initialize(name)
    @name = name 
  end 
   attr_accessor :name
   
  def save 
    @@all << self
  end 
  def self.all 
    return @@all
  end
  def self.create(name)
    self.new(name)
    @@all << self
  end 
  def self.destroy_all
    @@all=[]
    return @@all
  end
end


