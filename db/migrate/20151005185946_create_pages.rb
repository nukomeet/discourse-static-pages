class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages_pages do |t|
      t.string :title, null: false
      t.text :body
      t.timestamps
    end
  end
end
