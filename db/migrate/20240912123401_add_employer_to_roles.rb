class AddEmployerToRoles < ActiveRecord::Migration[7.2]
  def change
    add_reference :roles, :employer, null: false, foreign_key: true
  end
end
