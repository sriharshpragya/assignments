class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true #Answers given by the user
      t.text :content

      t.timestamps
    end
  end
end
