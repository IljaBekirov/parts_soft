class AddWebService < ActiveRecord::Migration[5.2]
  def change
    create_table :web_services do |t|
      t.string :name
      t.string :host
      t.string :api_key
      t.float :coef
    end
  end
end
