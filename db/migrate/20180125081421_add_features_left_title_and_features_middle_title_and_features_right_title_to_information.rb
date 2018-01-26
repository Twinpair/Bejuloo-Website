class AddFeaturesLeftTitleAndFeaturesMiddleTitleAndFeaturesRightTitleToInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :information, :features_left_title, :string
    add_column :information, :features_middle_title, :string
    add_column :information, :features_right_title, :string
  end
end
