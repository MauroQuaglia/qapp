class CreateBooks < ActiveRecord::Migration[6.1]

  def change
    create_table(:books) do |t|
      t.belongs_to(:author, foreign_key: true)
      t.string(:title)
      t.date(:publication_date)
      t.text(:note)
      t.timestamps
    end
  end

end
