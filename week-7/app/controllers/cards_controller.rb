class CardsController < ApplicationController
  def index
    card = Card.new({
      name: "Ada Lovelace",
      job: "Countess",
      location: "England",
      details: "The first programmer!",
      acquired_on: "1815-12-10"
    })

    output = <<~HEREDOC
    Business Cards:
      #{card.name}
      #{card.job}

      #{card.location}
      #{card.details}

      #{card.acquired_on.to_s(:medium)}
    HEREDOC

    render({ plain: output})
  end
end
