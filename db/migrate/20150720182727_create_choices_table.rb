class CreateChoicesTable < ActiveRecord::Migration
  def change
  	  create_table :choices do |t|
  		t.boolean :question1
  		t.boolean :question2
  		t.boolean :question3
  		t.boolean :question4
  		t.integer :user_id
  		t.datetime :created_at
 	 end
  end
end
