class AddDefaultImage < ActiveRecord::Migration
  def change
    change_column_default :characters, :image, 'https://image.shutterstock.com/image-vector/20-sided-20d-dice-line-600w-355147958.jpg'
  end
end
