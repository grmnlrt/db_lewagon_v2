class DbSchemasController < ApplicationController
  before_action :set_db_schema, only: [:edit, :update, :destroy]
  after_action :authorize_db_schema, except: [:index]

  def new
    @db_schema = DbSchema.new
  end

  def create
    @db_schema =DbSchema.new(db_schema_params)
    @db_schema.user = current_user
    if @db_schema.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @db_schema.update(db_schema_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @db_schema.destroy
    redirect_ot root_path
  end

  private

  def db_schema_params
    params.require(:db_schema).permit(:content)
  end

  def set_db_schema
    @db_schema = DbSchema.find(params[:id])
  end

  def authorize_db_schema
    authorize @db_schema
  end
end
