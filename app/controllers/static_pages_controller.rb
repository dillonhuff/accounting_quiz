class StaticPagesController < ApplicationController

  def compound_interest_problem_string(principal)
    return "If John has #{principal} dollars in a bank account"
  end

  def home
    @problem_text = compound_interest_problem_string(Random.rand(100.0...100000.0))
    @correct_answer = 1234
    render :home
  end

  def submit_answer
    @user_answer = Integer(params[:user_answer])
    @correct_answer = Integer(params[:correct_answer])
    if @user_answer == @correct_answer
      render :right_answer
    else
      render :wrong_answer
    end
  end

  def help
  end

end
