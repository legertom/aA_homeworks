class Brand < ApplicationRecord

    has_many :racquets,
    class_name: 'Racquet',
    primary_key: :id,
    foreign_key: :brand_id


end