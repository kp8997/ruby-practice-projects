class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
