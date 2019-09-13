class Api::V1::VerticalsController < ApplicationController
  def index
    verticals = Vertical.all
    render json: verticals
  end
end
