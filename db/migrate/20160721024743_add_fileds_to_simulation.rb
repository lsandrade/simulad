class AddFiledsToSimulation < ActiveRecord::Migration
  def change
    add_column :simulations, :name, :string
  end
end
