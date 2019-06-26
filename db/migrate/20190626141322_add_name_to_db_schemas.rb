class AddNameToDbSchemas < ActiveRecord::Migration[5.2]
  def change
    add_column :db_schemas, :name, :string
  end
end
