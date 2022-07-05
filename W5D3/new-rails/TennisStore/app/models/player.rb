class Player < ApplicationRecord

    belongs_to :home_court,
    class_name: 'Court',
    primary_key: :id,
    foreign_key: :home_court_id

    has_many :racquets,
    class_name: 'Racquet',
    primary_key: :id,
    foreign_key: :player_id


end