class AddColumnLocationCreateReports < ActiveRecord::Migration
  def change
    add_column :reports, :location, :text
  end
end
