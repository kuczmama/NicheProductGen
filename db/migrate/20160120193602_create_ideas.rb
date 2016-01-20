class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :niche
      t.string :product

      t.timestamps null: false
    end
  end
end
