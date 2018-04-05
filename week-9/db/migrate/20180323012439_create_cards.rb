class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :job
      t.string :location
      t.text :details
      t.date :acquired_on

      t.timestamps
    end
  end
end
