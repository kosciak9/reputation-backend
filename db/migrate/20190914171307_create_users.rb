class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.float :reputation_score
      t.string :name
      t.integer :age
      t.string :login
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
