class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :cookies
      t.integer :fingers
      t.integer :grandmas
      t.integer :bakeries

      t.timestamps
    end
  end
end
