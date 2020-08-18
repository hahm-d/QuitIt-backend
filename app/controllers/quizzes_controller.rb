class QuizzesController < ApplicationController

    def index
        quizzes = Quiz.all

        render json: quizzes, include:[:questions]
    end

    def show
        quiz = Quiz.find_by(unique_code: params[:unique_code])
        
        render json: quiz, include:[:questions]
    end

    def create
        quiz = Quiz.create(quiz_params)
        render json: quiz
    end

    private
    
    def quiz_params
        params.require(:quizzes).permit(:unique_code, :teacher_name, :teacher_email, :title, :time_limit)
    end

end

