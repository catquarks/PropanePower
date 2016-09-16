class CreateCollaborators < ActiveRecord::Migration[5.0]
  def change
    create_table :collaborators do |t|
      t.string :name
      t.string :bio
      t.string :catchphrase
      t.boolean :cynical, default: false

      t.timestamps
    end
  end
end
