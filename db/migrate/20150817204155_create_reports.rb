class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.text :details
      t.date :since
      t.boolean :found

      t.timestamps null: false
    end
  end
end
