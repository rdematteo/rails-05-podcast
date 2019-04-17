class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :show_notes
      t.string :mp3_file

      t.timestamps
    end
  end
end
