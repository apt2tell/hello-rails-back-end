class Api::V1::MessagesController < ApplicationController
  def index
    @message = Message.order('RANDOM()').limit(1).first
    render json: @message
  end
end
