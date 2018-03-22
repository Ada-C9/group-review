class CardsController < ApplicationController
  def index
    card = Card.new({
      name: "Ada Lovelace",
      job: "Countess",
      location: "England",
      description: "The first programmer!"
    })

    output = <<~HEREDOC
    Business Cards:
      #{card.name}
      #{card.job}

      #{card.location}
      #{card.description}
    HEREDOC

    render plain: output
  end
end
