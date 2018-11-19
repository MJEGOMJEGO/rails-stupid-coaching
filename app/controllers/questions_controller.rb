class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_asked = params[:question_asked]
    if @question_asked == 'I am going to work'
    @answer = 'Great!'
    elsif @question_asked.to_s.include?('?')
    @answer = 'Silly question, get dressed and go to work!'
    else @answer = "I don't care, get dressed and go to work!"
      return @answer
    end
  end
end
