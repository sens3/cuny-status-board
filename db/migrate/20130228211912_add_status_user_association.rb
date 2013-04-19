class AddStatusUserAssociation < ActiveRecord::Migration
  def up
    add_column :statuses, :user_id, :integer
  end

  def down
    remove_column :statuses, :user_id
  end
end
