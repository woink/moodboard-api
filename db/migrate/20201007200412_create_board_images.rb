class CreateBoardImages < ActiveRecord::Migration[6.0]
  def change
    create_table :board_images do |t|
      t.integer :board_id
      t.integer :image_id

      t.timestamps
    end
  end
end
