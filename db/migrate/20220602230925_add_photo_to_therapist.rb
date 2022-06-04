class AddPhotoToTherapist < ActiveRecord::Migration[6.1]
  def change
    add_column :therapists, :photo, :string
  end
end
