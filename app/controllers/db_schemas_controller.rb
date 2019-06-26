class DbSchemasController < ApplicationController
  layout 'sqldesigner', only: :show

  def show
    @db_schema = DbSchema.find(params[:id])
    authorize @db_schema
  end
end
