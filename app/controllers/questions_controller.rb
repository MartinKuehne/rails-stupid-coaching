class QuestionsController < ApplicationController
  def ask 
  end

  def answerone 
    if params[:question].downcase == "i am going to work"
      "Great!"
      elsif params[:question].end_with?("?")
      'Silly question, get dressed and go to work!'
      else
      "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @answer = answerone
    @question = params[:question]
  end
end

# If you don’t ask her/him something, but just tell her/him something (e.g. "I met a girl last night"), she/he will just answer back "I don't care, get dressed and go to work!"
# If you ask her/him something (e.g. "Can I eat some pizza?"), she/he won’t be of much help either and she/he will tell you "Silly question, get dressed and go to work!"
# The only way to get rid of her/him is to tell her/him what she/he wants to hear: "I am going to work right now!".