class RenameColumnOwnerIdinElectiontoUserId < ActiveRecord::Migration
   rename_column :elections, :owner_id, :user_id
end
