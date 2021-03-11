class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, nill: false
      t.text :body, nill: false

      t.timestamps
    end
  end
end
