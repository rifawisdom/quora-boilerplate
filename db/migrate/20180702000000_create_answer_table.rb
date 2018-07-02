
class CreateAnswerTable < ActiveRecord::Migration[5.0]
  def change
 

    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :answers do |t|
   	t.string :description
   	t.belongs_to :question
   	t.belongs_to :user
   	

    t.timestamps
    end
  end
end
