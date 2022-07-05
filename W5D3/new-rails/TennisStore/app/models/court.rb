class Court < ApplicationRecord

    has_many :players,
    class_name: 'Player',
    primary_key: :id,
    foreign_key: :home_court_id

    has_many :racquets,
    through: :players,
    source: racquets


end