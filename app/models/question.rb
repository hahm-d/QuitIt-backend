class Question < ApplicationRecord
    belongs_to :quiz
    has_one_attached :image

    def to_param
        quiz_id
    end

end
