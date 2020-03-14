class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true #Question posted by the user
      t.references :topic, foreign_key: true
      t.text :content, null: false

      t.timestamps
    end
  end
end
