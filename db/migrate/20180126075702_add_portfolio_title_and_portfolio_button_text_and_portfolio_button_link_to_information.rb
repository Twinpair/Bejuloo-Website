class AddPortfolioTitleAndPortfolioButtonTextAndPortfolioButtonLinkToInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :information, :portfolio_title, :string
    add_column :information, :portfolio_button_text, :string
    add_column :information, :portfolio_button_link, :string
  end
end
