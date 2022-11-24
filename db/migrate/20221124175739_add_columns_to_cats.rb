class AddColumnsToCats < ActiveRecord::Migration[7.0]
  def change
    add_column :cats, :is_vaccinated, :boolean, default: false
    add_column :cats, :is_neutered, :boolean, default: false
    add_column :cats, :estimated_age, :integer
    add_column :cats, :gender, :string
    add_column :cats, :location, :string
    add_column :cats, :coat_colour, :string
  end
end
