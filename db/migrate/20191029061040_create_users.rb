class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :accessToken
      t.string :data_access_expiration_time
      t.string :expiresIn
      t.text :signedRequest
      t.string :uid
      t.timestamps
    end
  end
end
