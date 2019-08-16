class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :garments, :type, :garment_type
  	rename_column :garments, :name, :garment_name
  end
end
