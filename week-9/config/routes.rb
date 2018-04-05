Rails.application.routes.draw do

  # 1. HTTP verb
  # 2. path
  # 3. to:
  # 4. controller#action

  # get('/cards', {to: 'cards#index', as: 'cards'})
  #
  # get('/cards/new', {to: 'cards#new', as: 'new_card'})
  # get('/cards/:id', {to: 'cards#show', as: 'card'})

  resources(:cards, {:only => [:index, :new, :show]})


  #get('/cards', {controller: 'cards', action: 'index'})
end
