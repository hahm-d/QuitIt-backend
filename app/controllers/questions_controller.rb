class QuestionsController < ApplicationController
    
    def create
        @question = Question.create(question_params)
        respond_to_question()
    end
    
    def show
        question = Question.where(quiz_id: params[:quiz_id])
        render json: question
    end

    def index
        questions = Question.all
        render json: questions
    end

    private
    
    def question_params
        params.permit(:statement, :answer, :incorrect1, :incorrect2, :incorrect3, :quiz_id, :image)
    end

    def render_all_question()
        
    end

    def respond_to_question()
        question_serializer = QuestionSerializer.new(question: @question)
        render json: question_serializer.serialize_new_question()
    end

end