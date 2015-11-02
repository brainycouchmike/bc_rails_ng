class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string  :page_handle, null: false
      t.string  :html_title, default: 'Page'
      t.string  :page_title, default: 'Page'
      t.text    :page_data, default: '{[]}'
      t.boolean :page_default, default: false
      t.integer :group_id, null: false, default: 1

      t.timestamps null: false
    end
    add_index :pages, :page_handle, unique: true
  end
end
