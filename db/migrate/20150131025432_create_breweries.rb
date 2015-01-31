class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :location
      t.text :about
      t.string :url
      t.boolean :tours_?
      t.string :hours
      t.belongs_to :state

      t.timestamps null: false
    end
  end
end
