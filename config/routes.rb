Rails.application.routes.draw do
  get("/rock", { :controller => "game", :action => "play_rock"})

  get("/paper", { :controller => "game", :action => "play_paper"})

  get("/scissors", { :controller => "game", :action => "play_scissors"})

  get("/", { :controller => "game", :action => "get_rules"})
end
