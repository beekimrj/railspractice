class CreateParagraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :paragraphs do |t|
      t.string :title
      t.text :body
      t.references :article, null: false, foreign_key: true
      t.references :hotel, null: true, foreign_key: true

      t.timestamps
    end
  end
end
