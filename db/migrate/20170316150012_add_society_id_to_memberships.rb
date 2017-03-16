class AddSocietyIdToMemberships < ActiveRecord::Migration[5.0]
  def change
    add_column :memberships, :society_id, :integer
  end
end
