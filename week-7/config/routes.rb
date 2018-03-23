Rails.application.routes.draw do

  # 1. HTTP verb
  # 2. path
  # 3. to:
  # 4. controller#action

  get '/cards', to: 'cards#index'
end
