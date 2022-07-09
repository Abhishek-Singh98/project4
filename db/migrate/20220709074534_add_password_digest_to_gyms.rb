class AddPasswordDigestToGyms < ActiveRecord::Migration[6.0]
  def change
    add_column :gyms, :password_digest, :string
  end
end
