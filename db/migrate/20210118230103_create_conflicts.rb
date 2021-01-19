class CreateConflicts < ActiveRecord::Migration[6.0]
  def change
    create_table :conflicts do |t|
      t.references :responsibility, null: false, foreign_key: true
      t.references :control, null: false, foreign_key: true

      t.timestamps
    end
  end
end
