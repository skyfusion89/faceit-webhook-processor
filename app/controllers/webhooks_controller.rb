class WebhooksController < ApplicationController
  include HTTParty
  skip_before_action :verify_authenticity_token


  def faceit
    # # Parse the webhook data
    @payload = params
    #player_id = payload[:player_id]
    # data = JSON.parse(request.body.read)
    #response = HTTParty.get("https://open.faceit.com/data/v4/players/#{player_id}", 
                            # headers: { "Authorization" => "Bearer #{ENV["FACEIT_API_KEY"]}" })
    # # Retrieve the ELO scores for the players before and after the match
    # client = Faceit::Client.new(ENV["FACEIT_API_KEY"])
    # match_id = data["payload"]["match_id"]
    # match = client.matches.get(match_id)
    # players = match["teams"].flat_map { |team| team["players"] }
    # initial_elo = players.map { |player| player["initial_elo"] }
    # final_elo = players.map { |player| player["final_elo"] }
    # byebug
    # # Calculate the ELO difference
    @elo_difference = "test" # final_elo.sum - initial_elo.sum

    # # Respond to the webhook request
    render json: @payload
  end
end