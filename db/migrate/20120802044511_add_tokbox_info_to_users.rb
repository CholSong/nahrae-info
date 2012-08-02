class AddTokboxInfoToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :tokbox_session_id, :string
  	add_column :users, :tokbox_token, :text
  end
end
