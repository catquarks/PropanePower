class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.references :song, foreign_key: true
      t.references :collaborator, foreign_key: true
      t.string :job

      t.timestamps
    end
  end
end
