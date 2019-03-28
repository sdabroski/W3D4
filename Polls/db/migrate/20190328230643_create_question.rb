class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :poll_id, null: false
      t.text :question, null: false
    end

    add_index :questions, :poll_id
  end
end
