class AddTables < ActiveRecord::Migration
  def change

    create_table(:bands) do |t|
      t.column(:name, :string)
      t.timestamps()
    end

    create_table(:venues) do |t|
      t.column(:name, :string)
      t.timestamps()
    end

    create_table(:concerts) do |t|
      t.column(:band_id, :integer)
      t.column(:venue_id, :integer)
    end

  end
end
