class AddBodyToEmails < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :body, :string
    add_column :emails, :object, :string
  end
end
