class AddColumnContentType < ActiveRecord::Migration[5.0]
  def change
    add_column(:images, :content_type, :binary)
  end
end
