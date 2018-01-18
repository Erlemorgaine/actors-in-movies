class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :image_url

      t.timestamps
    end
  end
end
