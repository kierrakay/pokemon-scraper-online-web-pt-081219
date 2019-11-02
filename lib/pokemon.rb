class Pokemon
  
  attr_accessor :id, :name, :type, :db
  @@all = []
  def initialize(pokemon)
    @id = pokemon [id]
    @name = pokemon [name]
    @type = pokemon [type]
    @db = pokemon[db]
    @@all << self
    pokemon
  end 
  
  def self.all 
    @@all
  end 
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type) 
  end
  
  def self.find(id, db)
   pokemon = db.execute("SELECT * FROM pokemon WHERE id = #{id}")
   return pokemon[0]
end
  
end
