class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :passphrase
      t.string :source
      t.string :start_node
      t.string :end_node
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
