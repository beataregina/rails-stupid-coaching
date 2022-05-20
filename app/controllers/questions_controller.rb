class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] # this will store the user input from the form in the variable @question; params collects the data from the request:
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "Great!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
