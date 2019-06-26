class CreateSharings < ActiveRecord::Migration[5.2]
  def change
    create_table :sharings do |t|
      t.references :user
      t.references :db_schema
      t.timestamps
    end
  end
end
