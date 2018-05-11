class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
