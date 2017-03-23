class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.references :company, foreign_key: true
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
