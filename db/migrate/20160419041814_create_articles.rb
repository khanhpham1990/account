class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :content

      t.timestamps null: false
      t.references :category
    end
  end
end
