class CreateSurveyQuestions < ActiveRecord::Migration
  def change
      create_table :survey_questions do |t|
      t.string :question, null: false
      t.integer :environmental_study_id, null: false

      t.timestamps
    end
  end
end
