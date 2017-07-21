class CreateChitters < ActiveRecord::Migration[5.1]
  def change
    create_table :chitters do |t|
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
