class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @reponses = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

     @question = params[:question]

      if @question.include?('?')
        @answer = @reponses[1]
      elsif @question == "I'm going to work"
        @answer = @reponses[0]
      else
        @answer = @reponses[2]
      end
  end
end
