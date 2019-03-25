class CreateRubeets < ActiveRecord::Migration[5.2]
  def change
    create_table :rubeets do |t|
    	t.text :content
    end
  end
end
