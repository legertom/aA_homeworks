class Racquet < ApplicationRecord

    belongs_to :player,
    class_name: 'Player',
    primary_key: :id,
    foreign_key: :player_id

    has_one :home_court,
    through: player,
    source: home_court

    belongs_to :brand,
    class_name: 'Brand'
    primary_key: :id,
    foreign_key: :brand_id


end