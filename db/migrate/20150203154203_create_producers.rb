class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.string :bug
      t.string :internals
      t.string :exceptions
      t.string :components
      t.string :gives

      t.timestamps null: false
    end
  end
end
