class AddIdsToGroupMemberships < ActiveRecord::Migration
  def change
    add_column :group_memberships, :user_id, :integer
    add_column :group_memberships, :group_id, :integer
  end
end
