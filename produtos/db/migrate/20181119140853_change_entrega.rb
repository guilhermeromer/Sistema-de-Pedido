class ChangeEntrega < ActiveRecord::Migration[5.2]
  def up
      change_column :produtos, :entregue, :boolean, default: false
    end

    def down
      change_column :produtos, :entregue, :boolean
    end
end
