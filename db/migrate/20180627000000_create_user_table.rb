

# this is where you should use an ActiveRecord migration to

class CreateUserTable < ActiveRecord::Migration[5.0]
  def change

    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :users do |t|
   	t.string :email
   	t.string :password
   	t.string :password_digest


    t.timestamps
    end
  end
end


