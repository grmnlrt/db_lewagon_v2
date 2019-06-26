class SharingsController < ApplicationController
  before_action :set_db_schema, only: [:create]
  after_action :authorize_db_schema, except: [:create]

  def create
    if params[:token] == @db_schema.token
      @sharing = Sharings.create(user: current_user, shema: @db_schema)
    else
      flash[:alert] = "This action is not available"
    end
    redirect_to root_path
  end

  private

  def set_db_schema
    @db_schema = DbSchema.find(params[:id])
  end

  def authorize_db_schema
    authorize @sharing
  end
end
