class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
    	t.string :first_name, :last_name, :img_url
    	t.date :birthdate
    	t.integer :drinks
  		t.boolean :license
    end
  end
end
