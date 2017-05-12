class CreateStore < ActiveRecord::Migration[5.1]
  def change
    create_table(:stores) do |t|
      t.column(:name, :string)
      t.column(:middle_id, :int)

      t.timestamps()
    end
  end
end
