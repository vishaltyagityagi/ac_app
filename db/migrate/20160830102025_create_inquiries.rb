class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.string :contact_number
      t.text :message
      t.text :text

      t.timestamps
    end
  end
end
