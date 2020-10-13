class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :img_url
      t.integer :x_cord
      t.integer :y_cord

      t.timestamps
    end
  end
end
