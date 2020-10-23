class ChangeThrillRatingToBeIntegerInRides < ActiveRecord::Migration[5.2]
  def up
    change_column :rides, :thrill_rating, :integer, using: 'thrill_rating::integer'
  end

  def down
    change_column :rides, :thrill_rating, :string
  end
end
