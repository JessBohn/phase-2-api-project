class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :opening_crawl, limit: 1000
      t.integer :episode

    end
  end
end
