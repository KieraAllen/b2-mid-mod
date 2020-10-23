class CreateRide < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.string :name
      t.string :thrill_rating
      t.references :amusement_park, foreign_key: true
    end
  end
end
