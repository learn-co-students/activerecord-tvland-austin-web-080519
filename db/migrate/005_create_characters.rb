class CreateCharacters < ActiveRecord::Migration[5.1]
    def change
        create_table :characters do |a|
            a.string :name
            a.integer :actor_id
            a.integer :show_id
            a.string :catchphrase
        end
    end
end