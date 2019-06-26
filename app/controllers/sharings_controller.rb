class SharingsController < ApplicationController
  before_action :set_db_schema, only: [:create]

  def create
    @sharing = Sharing.new(user: current_user, db_schema: @db_schema)
    authorize @sharing
    if params[:token] == @db_schema.token
      @sharing.save
      redirect_to db_schema_path(@db_schema)
    else
      flash[:alert] = "This action is not available"
      redirect_to root_path
    end
  end

  private

  def set_db_schema
    @db_schema = DbSchema.find(params[:db_schema_id])
  end
end
