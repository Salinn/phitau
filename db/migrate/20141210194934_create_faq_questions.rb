class CreateFaqQuestions < ActiveRecord::Migration
  def change
    create_table :faq_questions do |t|
      t.string :title
      t.text :content
      t.integer :faq_category_id
      t.integer :order

      t.timestamps
    end
  end
end
