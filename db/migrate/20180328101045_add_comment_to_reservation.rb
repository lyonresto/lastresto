class AddCommentToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :comment, :text
  end
end
