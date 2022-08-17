class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age_in_years
      t.string :species
      t.boolean :adopted?
      t.integer :shelter_id
      t.integer :adopter_id
    end
  end
end
