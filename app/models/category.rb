class Category < ApplicationRecord
    # define countdown_events rekationship
    has_many :countdown_events, dependent: :destroy
end
