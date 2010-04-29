class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.int             :user_id
      t.string          :type
      t.string          :text

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end