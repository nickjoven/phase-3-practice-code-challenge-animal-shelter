class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        "#{first_name} #{last_name}"
    end

    def adopt(pet)
        if pet.adopted?
            puts "#{pet.name} is already adopted!"
        else
            pet.update!(adopted?: true)
            pet.update!(adopter_id: self.id)
        end
    end

    def fav_pet
        self.pets.group(:species).order(Arel.sql('count(*) desc')).limit(1).pluck(:species).first
    end

end
