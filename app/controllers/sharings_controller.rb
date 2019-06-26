class SharingsController < ApplicationController
  before_action :set_db_schema, only: [:create]

  def create
    puts "--------"
    p params
    @sharing = Sharing.new(user: current_user, db_schema: @db_schema)
    authorize @sharing
    if params[:token] == @db_schema.token
      @sharing.save

      puts "after sharing"
    else
      flash[:alert] = "This action is not available"
    end
    redirect_to root_path
  end

  private

  def set_db_schema
    @db_schema = DbSchema.find(params[:db_schema_id])
  end
end
