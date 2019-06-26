class AddTokenToDbSchema < ActiveRecord::Migration[5.2]
  def change
    add_column :db_schemas, :token, :string
  end
end
