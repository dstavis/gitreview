class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :github_username
      t.string :github_password

      t.timestamps
    end
  end
end
