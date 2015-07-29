class GameController < ApplicationController
  # This action is for the bare domain. You can ignore it.
  def rps

  @user_move = params["the_move"]

  @computer_move = ["rock", "paper", "scissors"].sample

  if @user_move == @computer_move
  	@outcome = "tied"
  elsif @user_move == "paper" && @computer_move == "rock"
  	@outcome = "won"
  elsif @user_move == "paper" && @computer_move == "scissors"
  	@outcome = "lost"
  elsif @user_move == "scissors" && @computer_move == "rock"
  	@outcome = "lost"
  elsif @user_move == "scissors" && @computer_move == "paper"
  	@outcome = "won"
  elsif @user_move == "rock" && @computer_move == "paper"
  	@outcome = "lost"
  elsif @user_move == "rock" && @computer_move == "scissors"
  	@outcome = "won"
  end

  render("rps.html.erb")
end


end
