class Dog < ApplicationRecord

    validates :name, presence: true
    validate :check_name_length

    def check_name_length
        unless self.name.length >= 4
            errors[:name] << "Name is too short, must be longer than 4 characters"
        end

    end

    has_many :toys,
    class_name: 'Toy',
    primary_key: :id,
    foreign_key: :dog_id

    belongs_to :house,
    class_name: 'House',
    primary_key: :id,
    foreign_key: :house_id

end