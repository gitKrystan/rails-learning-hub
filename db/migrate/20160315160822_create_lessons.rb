class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :number
      t.text :content
      t.belongs_to :section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
