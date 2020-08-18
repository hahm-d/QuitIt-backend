class QuestionsController < ApplicationController
    def create
        question = Question.create(question_params)
    end

    def index
        questions = Question.all
        render json: questions
    end

    private
    
    def question_params
        params.permit(:statement, :answer, :incorrect1, :incorrect2, :incorrect3, :quiz_id, :image)
    end
end