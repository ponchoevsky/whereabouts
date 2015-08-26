class AddReportIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :report_id, :integer
  end
end
