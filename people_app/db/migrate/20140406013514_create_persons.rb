class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
    	t.string :first_name, :last_name, :img_url
    	t.date :birthdate
    	t.integer :drinks
    	t.boolean :licence
    end
  end
end
