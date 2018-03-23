class CardsController < ApplicationController
  def index
    @card = Card.new({
      name: "Ada Lovelace",
      job: "Countess",
      location: "England",
      details: "The first programmer!",
      acquired_on: "1815-12-10"
    })

    output = <<~HEREDOC
    <h1>Business Cards:</h1>
    <div class="card">
      <div class="salutation">
        <h2 class="name"><%= @card.name %></h2>
        <h3 class="job"><%= @card.job %></h3>
      </div>
      <h4 class="location"><%= @card.location %></h4>
      <p class="details"><%= @card.details %></p>
      <h4 class="acquired-on"><%= time_ago_in_words(@card.acquired_on) %></h4>
    </div>
    HEREDOC

    render({ inline: output})
  end
end
