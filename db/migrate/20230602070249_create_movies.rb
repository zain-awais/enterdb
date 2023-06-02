class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :backdrop_path
      t.integer :external_id
      t.string :original_language
      t.string :original_title
      t.text :overview
      t.float :popularity
      t.string :poster_path
      t.date :release_date
      t.string :title
      t.boolean :video
      t.float :vote_average
      t.integer :vote_count
      t.timestamps
    end
  end
end
