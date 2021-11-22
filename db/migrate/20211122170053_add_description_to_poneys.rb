class AddDescriptionToPoneys < ActiveRecord::Migration[6.0]
  def change
    add_column :poneys, :description, :string
  end
end
