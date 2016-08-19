class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :original_pw

      t.timestamps(null: false)
    end
  end
end
