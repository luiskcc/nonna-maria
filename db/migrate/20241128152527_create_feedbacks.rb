class CreateFeedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.integer :rating
      t.string :client_name
      t.string :email_address
      t.text :comment

      t.timestamps
    end
  end
end
