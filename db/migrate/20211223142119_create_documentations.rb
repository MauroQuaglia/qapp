class CreateDocumentations < ActiveRecord::Migration[6.1]

  def change
    create_table(:documentations) do |t|
      t.string(:name)
      t.string(:source)
      t.text(:note)
      t.timestamps
    end
  end

end
