class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @questions = params[:questions]


    if @questions == "I am going to work"
      @answer = "Great!"
    elsif @questions.include?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# if @questions
#   params[:questions] == "I am going to work"
#   return "Great!"
# elsif
#   params[:questions] = "?" / @questions.include?('?')
#   return "Silly question, get dressed and go to work!"
# else
#   return "I don't care, get dressed and go to work!"
# end

# Si le message est I am going to work, le coach répondra Great!.
# Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
# Sinon, le coach répondra I don't care, get dressed and go to work!.

# if @questions
  #   # @questions.select { |question| question.start_with?(@questions) }
# end
