class CoachingController < ApplicationController
  def answer
    @question = params[:silly_question]
    @coach_answer = "Can you repete"
    if @question.end_with? "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      @coach_answer = "ok"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
  end
end


# def coach_answer(@question)
#   # TODO: return coach answer to @question
#   if @question.end_with? "?"
#     return "Silly question, get dressed and go to work!"
#   elsif @question == "I am going to work right now!"
#     return ""
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(@question)
#   # TODO: return coach answer to @question, with additional custom rules of yours!
#   if @question == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   elsif @question == @question.upcase
#     return "I can feel your motivation! #{coach_answer(@question)}"
#   else
#     return coach_answer(@question)
#   end
# end
