class CreateVacations < ActiveRecord::Migration[5.0]
  def change
    create_table :vacations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
