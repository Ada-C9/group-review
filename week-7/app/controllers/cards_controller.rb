class CardsController < ApplicationController
  def index
    @card = Card.new({
      name: "Ada Lovelace",
      job: "Countess",
      location: "England",
      details: "The first programmer!",
      acquired_on: "1815-12-10"
    })

    render("index")
  end
end
