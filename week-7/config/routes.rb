Rails.application.routes.draw do

  # HTTP method/verb | path     |    controller#action
  get                 '/cards',  to: 'cards#index'

  # Also valid:
  #get                '/cards',  controller: 'cards', action: :index
end
