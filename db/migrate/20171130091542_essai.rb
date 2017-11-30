class Essai < ActiveRecord::Migration[5.0]
  def change
  change_table :emails do |t|
  t.remove :Object, :Body
  
end
  end
end
