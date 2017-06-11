# frozen_string_literal: true

class ClientsController < ApplicationController
  before_action :set_client, only: %i[show update destroy]
  before_action :validate_user

  # GET /clients
  def index
    @clients = current_user.clients.all

    render json: @clients
  end

  # GET /clients/1
  def show
    render json: @client
  end

  # POST /clients
  def create
    @client = current_user.build(client_params)
    @client.valid?
    if @client.save
      render json: @client, status: :created, location: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      render json: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_client
    validate_user
    @client = current_user.clients.find(params[:id])
  end

  def validate_user
    set_current_user
  end

  # Only allow a trusted parameter "white list" through.
  def client_params
    params.require(:client).permit(:first_name, :family_name, :born_on, :gender)
  end
end
