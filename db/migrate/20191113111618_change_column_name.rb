class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :stars, :rating
  end
end
