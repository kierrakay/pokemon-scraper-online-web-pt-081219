require 'pry'
class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(pokemon)
    @id = pokemon [id]
    @name = pokemon [name]
    @type = pokemon [type]
    @db = pokemon[db]
  end
  
  def self.save (name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);", name, type) 
  end
  
  def self.find(id, db)
    # find pokemon by id
    # return a new pokemon object
    
  found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id).first
  binding.pry
end
  
end
