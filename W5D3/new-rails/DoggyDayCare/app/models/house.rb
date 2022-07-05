class House < ApplicationRecord

        has_many :dogs,
        class_name: 'Dog',
        primary_key: :id,
        foreign_key: :house_id

        has_many :toys, 
            through: :dogs,
            source: :toys

end