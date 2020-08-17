class Question < ApplicationRecord
    belongs_to :quiz
    has_one_attached :image
end
