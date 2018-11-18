class AddIllustrationToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :illustration_1, :string
    add_column :articles, :illustration_2, :string
    add_column :articles, :illustration_3, :string
    add_column :articles, :illustration_4, :string
  end
end
