class CreateTries < ActiveRecord::Migration[5.0]
  def change
    create_table :tries do |t|
      t.string :try

      t.timestamps
    end
  end
end
