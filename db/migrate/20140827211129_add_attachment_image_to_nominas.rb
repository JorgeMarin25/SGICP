class AddAttachmentImageToNominas < ActiveRecord::Migration
  def self.up
    change_table :nominas do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :nominas, :image
  end
end
