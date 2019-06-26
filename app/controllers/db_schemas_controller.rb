class DbSchemasController < ApplicationController
  def show
    @db_schema = DbSchema.find(params[:id])
    authorize @db_schema
  end
end
