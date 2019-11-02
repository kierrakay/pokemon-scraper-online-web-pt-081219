class Pokemon
  
  attr_accessor :id, :name, :type, :db
  @@all = []
  def initialize(pokemon)
    @id = pokemon [id]
    @name = pokemon [name]
    @type = pokemon [type]
    @db = pokemon[db]
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    
  end 
  
  
end
