class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :object
      t.string :body

      t.timestamps
    end
  end
end
