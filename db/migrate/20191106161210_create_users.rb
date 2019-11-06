class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :cookies, :default => 0
      t.integer :fingers, :default => 0
      t.integer :grandmas, :default => 0
      t.integer :bakeries, :default => 0

      t.timestamps
    end
  end
end
