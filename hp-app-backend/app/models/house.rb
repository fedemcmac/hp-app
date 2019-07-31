class House < ApplicationRecord
    has_many :users

    def self.assign_house
        return House.all.sample
      end
end
