class CreateDbSchemas < ActiveRecord::Migration[5.2]
  def change
    create_table :db_schemas do |t|
      t.text :content
      t.references :user
      t.timestamps
    end
  end
end
