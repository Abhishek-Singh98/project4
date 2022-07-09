class AddPasswordDigestToTrainees < ActiveRecord::Migration[6.0]
  def change
    add_column :trainees, :password_digest, :string
  end
end
