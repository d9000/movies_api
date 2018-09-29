class CreateMovieRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_roles do |t|
      t.belongs_to :movie, foreign_key: true
      t.belongs_to :person, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
