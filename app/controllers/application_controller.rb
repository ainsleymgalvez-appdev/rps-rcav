class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def play_rock
    render({:template => "game_templates/rock.html.erb"})
  end

  def play_paper
    render({:template => "game_templates/paper.html.erb"})
  end

end
