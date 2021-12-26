class CreateHomesTags < ActiveRecord::Migration[6.1]
  def change
    create_table :homes_tags, :id => false do |t|
      t.references :home, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps
    end
  end
end
