class AddAttachmentCoverToEmpleados < ActiveRecord::Migration
  def self.up
    change_table :empleados do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :empleados, :cover
  end
end
