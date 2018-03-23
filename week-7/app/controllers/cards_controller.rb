class CardsController < ApplicationController
  def index
    @card = Card.new({
      name: "Ada Lovelace",
      job: "Countess",
      location: "England",
      description: "The first programmer!"
    })

    some_erb = <<~ERB
    <h1>Business Cards:</h1>
    <ul class="cards">
      <li class="card">
        <div class="salutation">
          <h1 class="name"><%= @card.name %></h1>
          <h2 class="job"><%= @card.job %></h2>
        </div>
        <h3 class="location"><%= @card.location %></h3>
        <p class="description"><%= @card.description %></p>
      </li>
    </ul>
    ERB

    render inline: some_erb
  end
end
