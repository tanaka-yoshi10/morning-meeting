class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.date :date
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :notes, :date
  end
end
