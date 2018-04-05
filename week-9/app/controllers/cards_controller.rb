class CardsController < ApplicationController
  def index
    @card = Card.new({
      name: "Ada Lovelace",
      job: "Countess",
      location: "England",
      details: "The first programmer!",
      acquired_on: "1815-12-10"
    })

    render({plain: params()})
  end

  def show
    params_hash = params() # => some kind of hash

    card_id = params_hash[:id] # => "57"

    Card.find(card_id) # => nil because we have no card with ID 57

    render({plain: params()})
  end

  def new
    render({plain: "NEW CARD FORM"})
  end

  def favorite
    card = Card.find(params[:id])
    #card.update(favorite: true)
    card.favorite = true
    card.save

    redirect_to :index
  end
end
