class QuestionsController < ApplicationController

    def index
        questions = Question.all
        render json: questions.to_json(:include => {
            :answers => {:except => [:correct, :created_at, :updated_at]}
        }, :except => [:created_at, :updated_at])
    end

    def show
        question = Question.find(params[:id])
        render json: question.to_json(:include => {
            :answers => {:except => [:correct, :created_at, :updated_at]}
        }, :except => [:created_at, :updated_at])            
    end

    def check_answer
        # /questions/1 {"answer_id": "2"}
        question = Question.find(params[:id])
        is_correct = question.is_answer_correct?(params[:answer_id])
        render json: {is_correct: is_correct}
    end

end
