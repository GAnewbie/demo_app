class CreateGAnewbies < ActiveRecord::Migration
  def change
    create_table :g_anewbies do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
