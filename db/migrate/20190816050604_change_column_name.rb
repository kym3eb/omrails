class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :garments, :type, :garment_type
  end
end
