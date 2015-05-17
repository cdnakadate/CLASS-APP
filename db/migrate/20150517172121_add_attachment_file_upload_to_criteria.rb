class AddAttachmentFileUploadToCriteria < ActiveRecord::Migration
  def self.up
    change_table :criteria do |t|
      t.attachment :file_upload
    end
  end

  def self.down
    remove_attachment :criteria, :file_upload
  end
end
