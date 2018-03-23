class CardsController < ApplicationController
  def index
    @card = Card.new({
      name: "Ada Lovelace",
      job: "Countess",
      location: "England",
      description: "The first programmer!"
    })

    render "index"
  end
end
