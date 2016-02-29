class CoachingController < ApplicationController
  def ask
  end

  def answer
    @ask_question = params[:ask_question]
    if @ask_question.include? '?'
      @answer = "Silly question, get dressed and go to work!"
    elsif @ask_question == "I am going to work right now!"
      @answer = ""
    elsif @ask_question == "I AM GOING TO WORK RIGHT NOW!"
      @answer = ""
    elsif @ask_question.upcase == @ask_question
      @answer = "I can feel your motivation! "
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
