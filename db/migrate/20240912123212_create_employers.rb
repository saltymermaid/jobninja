class CreateEmployers < ActiveRecord::Migration[7.2]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :url
      t.string :jobs_url

      t.timestamps
    end
  end
end
