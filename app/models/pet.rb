class Pet < ActiveRecord::Base
    belongs_to :adopter
    belongs_to :shelter

    def self.oldest
        self.all.order("age_in_years DESC").first
    end

    def self.average_age
        self.all.average(:age_in_years)
    end

    def in_dog_years
        self.age_in_years * 5
    end

end
