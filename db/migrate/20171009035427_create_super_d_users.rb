class CreateSuperDUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :super_d_users do |t|
      t.datetime :PasswordModDate
      t.string :email
      t.string :phone
      t.string :firstname
      t.text :address
      t.text :country
      t.text :lastname

      t.timestamps
    end
  end
end
