class CreateUserId < ActiveRecord::Migration[5.0]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    add_reference :questions, :user
  end
end
