class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.date :start_date
      t.date :end_date
      t.string :status

      t.timestamps
      t.belongs_to :trainees
      t.belongs_to :trainers
      t.belongs_to :gyms
    end
  end
end
