class Question < ApplicationRecord
    
    include Rails.application.routes.url_helpers

    belongs_to :quiz
    has_one_attached :image

    def to_param
        quiz_id
    end

    def get_image_url
        url_for(self.image)
    end

end
