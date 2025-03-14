Rails.application.routes.draw do
  root "dice#homepage"

  get "/dice/2/6", to: "dice#roll", defaults: { number_of_dice: 2, how_many_sides: 6 }
  get "/dice/2/10", to: "dice#roll", defaults: { number_of_dice: 2, how_many_sides: 10 }
  get "/dice/1/20", to: "dice#roll", defaults: { number_of_dice: 1, how_many_sides: 20 }
  get "/dice/5/4", to: "dice#roll", defaults: { number_of_dice: 5, how_many_sides: 4 }
  
  get "/dynamic/:number_of_dice/:how_many_sides", to: "dice#roll"
end
