class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :quiz_id, :statement, :answer, :incorrect1, :incorrect2, :incorrect3, :image

  # def image
  #   Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true) if object.image.attached?
  # end

  def initialize(question: nil)
    @question = question
  end

  def serialize_new_question()
    serialized_new_question = serialize_question(@question)
    serialized_new_question.to_json()
  end

  def serialize_existing_question()
    serialized_new_question = serialize_question(@question)
  end
  
  private def serialize_question(question)
    if question.image.attached?
      { id: question.id,
      quiz_id: question.quiz_id,
      image: question.get_image_url(),
      statement: question.statement,
      answer: question.answer,
      incorrect1: question.incorrect1,
      incorrect2: question.incorrect2,
      incorrect3: question.incorrect3,        
      created_at: question.created_at }
    else
     { id: question.id,
      quiz_id: question.quiz_id,
      statement: question.statement,
      answer: question.answer,
      incorrect1: question.incorrect1,
      incorrect2: question.incorrect2,
      incorrect3: question.incorrect3,        
      created_at: question.created_at }
    end
  end
end
