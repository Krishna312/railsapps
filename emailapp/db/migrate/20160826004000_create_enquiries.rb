class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
      t.string :mobile
      t.boolean :responded, default: false

      t.timestamps null: false
    end
  end
end