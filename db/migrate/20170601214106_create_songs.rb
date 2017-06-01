class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :artist
      t.belongs_to :billboard

      t.timestamps
    end
  end
end
