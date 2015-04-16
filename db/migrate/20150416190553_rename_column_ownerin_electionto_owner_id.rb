class RenameColumnOwnerinElectiontoOwnerId < ActiveRecord::Migration
  rename_column :elections, :owner, :owner_id
end
