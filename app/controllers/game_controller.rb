class GameController < ApplicationController
  def play_rock
    @player = 'Rock'
    @cpu = ['Rock', 'Paper', 'Scissors'].sample

    @result = handle_battle(@player, @cpu)
    render template: "game_templates/play"
  end

  def play_paper
    @player = 'Paper'
    @cpu = ['Rock', 'Paper', 'Scissors'].sample

    @result = handle_battle(@player, @cpu)
    render template: "game_templates/play"
  end

  def play_scissors
    @player = 'Scissors'
    @cpu = ['Rock', 'Paper', 'Scissors'].sample

    @result = handle_battle(@player, @cpu)
    render template: "game_templates/play"
  end

  def get_rules
    render template: "game_templates/index"
  end

  private

  def handle_battle(player, cpu)
    if player == cpu
      "We Tied!"
    elsif (player == "Rock" && cpu == "Scissors") || (player == "Paper" && cpu == "Rock") || (player == "Scissors" && cpu == "Paper")
      "We Won!"
    else
      "We Lost!"
    end
  end
end
