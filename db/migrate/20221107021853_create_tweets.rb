class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string    :title,        null: false
      t.text      :nickname,     null: false
      t.text      :concept,      null: false
      t.timestamps
    end
  end
end
