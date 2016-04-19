class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
      t.references :article
    end
  end
end
