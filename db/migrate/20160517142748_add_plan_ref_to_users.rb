class AddPlanRefToUsers < ActiveRecord::Migration
  def change
    add_column :users, :plan, :references
  end
end
