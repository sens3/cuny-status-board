class CreateStatusTags < ActiveRecord::Migration
  def change
    create_table :status_tags do |t|
      t.integer :status_id, :tag_id

      t.timestamps
    end
  end
end
