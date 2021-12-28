class CreateDocumentations < ActiveRecord::Migration[6.1]

  def change
    create_table(:documentations) do |t|
      t.belongs_to(:library, foreign_key: true)
      t.string(:name)
      t.string(:source)
      t.text(:note)
      t.timestamps
    end
  end

end
