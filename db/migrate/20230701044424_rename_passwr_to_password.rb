class RenamePasswrToPassword < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :passwor, :password
  end
end
