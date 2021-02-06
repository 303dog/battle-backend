class Fighter < ApplicationRecord
    
    has_many :heros,  foreign_key: :hero_id
   
    

end
