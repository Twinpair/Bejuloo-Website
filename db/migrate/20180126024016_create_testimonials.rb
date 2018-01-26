class CreateTestimonials < ActiveRecord::Migration[5.0]
  def change
    create_table :testimonials do |t|
      t.text :quote
      t.string :source
      t.integer :order_listed

      t.timestamps
    end
  end
end
