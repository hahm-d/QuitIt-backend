class QuizzesController < ApplicationController

    def index
        quizzes = Quiz.all

        render json: quizzes, include:[:questions]
    end

    def show
        quiz = Quiz.find_by(unique_code: params[:unique_code])
        
        render json: quiz.to_json(include: { questions: { include: :image } })
    end

    def create
        quiz = Quiz.create(quiz_params)
        #quizzes = Quiz.all
        #render json: quizzes, include:[:questions]
    end

    private
    
    def quiz_params
        params.require(:quizzes).permit(:unique_code, :teacher_name, :teacher_email, :title, :time_limit)
    end

end

