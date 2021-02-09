class Fighter < ApplicationRecord
    
    belongs_to :hero,  foreign_key: :hero_id
   
    

end
