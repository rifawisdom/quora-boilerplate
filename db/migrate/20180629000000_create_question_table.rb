
class CreateQuestionTable < ActiveRecord::Migration[5.0]
  def change
 

    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :questions do |t|
   	t.string :description
   	

    t.timestamps
    end
  end
end
