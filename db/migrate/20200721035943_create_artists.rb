class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
<<<<<<< HEAD
=======
      t.string :new
      t.string :create
      t.string :edit
      t.string :update
      t.string :index
      t.string :show
>>>>>>> 682f38486bc3ab24abd91c5ea6102f645039fb53
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
