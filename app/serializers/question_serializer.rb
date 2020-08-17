class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :quiz_id, :statement, :answer, :choices, :image

  def image
    Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
end
