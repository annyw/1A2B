class AddHowAHowB < ActiveRecord::Migration[5.0]
  def change
  	add_column :tries, :how_a, :int
  	add_column :tries, :how_b, :int
  end
end
