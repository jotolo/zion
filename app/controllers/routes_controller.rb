class RoutesController < ApplicationController
  before_action :set_route, only: [:show]

  # GET /routes/1
  def show
    if params.has_key?(:passphrase) && params.has_key?(:source)
      @route = Route.find(passphrase: params[:passphrase], source: params[:source])
      render json: @route
    else
      render json: nil, status: :bad_request
    end
  end

  # POST /routes
  def create
    @route = Route.new(route_params)

    if @route.save
      render json: @route, status: :created, location: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  def route_params
    params.require(:route).permit(:passphrase, :source, :start_node, :end_node, :start_time, :end_time)
  end
end
