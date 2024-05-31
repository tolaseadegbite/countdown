class CountdownEvent < ApplicationRecord
    # validates that all attributes must be present before saving to database
    validates_presence_of :name, :description, :target

    # Attach an image to a countdown event
    has_one_attached :image

    # category association
    belongs_to :category
end
