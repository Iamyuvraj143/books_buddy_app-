class AddMoreAttributeInAccount < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :name, :string, null: false
    add_column :accounts, :city, :string, null: false
    add_column :accounts, :date_of_birth, :datetime, null: false
  end
end
