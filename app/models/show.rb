class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.map{|i| i.full_name}
    end

    def build_network(name)
        new_network = Network.new(name)
        self.network = new_network
        # binding.pry
    end
end