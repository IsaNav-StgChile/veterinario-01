class Pet < ApplicationRecord
    belongs_to :client  
    has_many :pet_histories   
    
    def history_count
        pet_histories.count  
      end
    
      def avg_weight
        pet_histories.average(:weight) 
      end
    
      def avg_height
        pet_histories.average(:heigth)
      end
    
      def max_weight
        pet_histories.pluck(:weight).max 
      end
    
      def max_height
        pet_histories.pluck(:heigth).max
      end    

      def owner_name
        client&.name
      end

end
