class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
     char_role = "#{self.characters[0].name} - #{self.shows[0].name}" 
     listroles = []
     listroles << char_role  
    end

    
end