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
    #.flatten is the same as putting .first tro get array out of nested array
    
  found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id).flatten

end
  
end
