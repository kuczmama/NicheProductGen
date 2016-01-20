class CreateNiches < ActiveRecord::Migration
  def change
    create_table :niches do |t|
      t.string :niche

      t.timestamps null: false
    end
  end
end
