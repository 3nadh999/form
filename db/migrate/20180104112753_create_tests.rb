class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :fname
      t.string :lname
      t.string :fullname
      t.string :email
      t.integer :phno
      t.string :branch
      t.string :address

      t.timestamps
    end
  end
end
