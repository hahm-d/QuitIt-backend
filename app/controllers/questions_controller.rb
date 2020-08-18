class QuestionsController < ApplicationController
    
    def create
        question = Question.create(question_params)
        render json: question
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
end