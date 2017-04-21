class CreateSurveyResponses < ActiveRecord::Migration
  def change
    create_table :survey_responses do |t|
      t.string :response
      t.integer :survey_question_id, null: false

      t.timestamps
    end
  end
end
