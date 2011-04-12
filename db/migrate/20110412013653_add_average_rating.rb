class AddAverageRating < ActiveRecord::Migration
  def self.up
    add_column :mp3s, :average_rating, :float
  end

  def self.down
    remove_column :mp3s, :average_rating
  end
end