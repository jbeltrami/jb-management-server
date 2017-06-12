# frozen_string_literal: true

class ServicesController < ProtectedController
  before_action :set_service, only: %i[show update destroy]
  before_action :validate_user

  # GET /services
  def index
    @services = current_user.services.all

    render json: @services
  end

  # GET /services/1
  def show
    render json: @service
  end

  # POST /services
  def create
    @service = current_user.services.build(service_params)
    @service.valid?
    if @service.save
      render json: @service, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_service
    validate_user
    @service = current_user.services.find(params[:id])
  end

  def validate_user
    set_current_user
  end

  # Only allow a trusted parameter "white list" through.
  def service_params
    params.require(:service).permit(:description, :service_date, :price,
                                    :client_id)
  end
end
