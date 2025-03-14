class DiceController < ApplicationController
  def homepage
    render "homepage"  # Renders homepage.erb
  end

  def roll
    @num_dice = params[:number_of_dice].to_i
    @sides = params[:how_many_sides].to_i
    
    @rolls = Array.new(@num_dice) { rand(1..@sides) }

    render "results"  # Renders results.erb (handles all cases dynamically)
  end
end
