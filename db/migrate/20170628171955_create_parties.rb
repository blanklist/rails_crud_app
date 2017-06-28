class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.string      :name, null: false
      t.string      :location, null: false
      t.date        :date
      t.references  :user
      t.timestamps
    end
  end
end
