# frozen_string_literal: true

class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.string :description
      t.string :url, null: false
      t.integer :rating
      t.belongs_to :teacher, foreign_key: true, null: false
      t.belongs_to :category, foreign_key: true, index: true, null: false

      t.timestamps
    end
  end
end
