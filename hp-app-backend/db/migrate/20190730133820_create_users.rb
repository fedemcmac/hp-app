class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :lives, :default => 0
      t.integer :score, :default => 0
      t.integer :high_score, :default => 0
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
