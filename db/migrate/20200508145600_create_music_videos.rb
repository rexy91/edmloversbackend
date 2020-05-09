class CreateMusicVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :music_videos do |t|
      t.string :name
      t.string :url
      t.string :artist
      t.string :duration
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
