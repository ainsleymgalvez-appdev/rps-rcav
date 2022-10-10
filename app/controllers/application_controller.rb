class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    
    render ({:template => "game_templates/rules.html.erb"})

  end
  
  def play_rock

    index = rand(3)
     moves = ["rock", "paper", "scissors"]
    @comp_move = moves.at(index)

    if  @comp_move == "rock"
        @outcome = "tied"
    elsif @comp_move == "paper"
        @outcome = "lost"
    elsif @comp_move == "scissors"
        @outcome = "won"
    end

    render({:template => "game_templates/rock.html.erb"})
  end

  def play_paper
    index = rand(3)
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.at(index)
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    elsif @comp_move == "rock"
      @outcome = "win"
    end

    render({:template => "game_templates/paper.html.erb"})
  end

  def play_scissors 
    index = rand(3)
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.at(index)

    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "rock"
      @outcome = "lost"

    end
      
      render({:template => "game_templates/scissors.html.erb"})
    end
end
