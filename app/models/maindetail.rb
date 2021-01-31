class Maindetail

  include ActiveModel::Model
  attr_accessor :image, :name, :info, :user_id, :category_id, :country_id, :main_id

  with_options presence: true do
    validates :name
    validates :info
    validates :category_id, numericality: { other_than: 1 ,message:"Select"}
    validates :country_id, numericality: { other_than: 1 ,message:"Select"}
  end
  
  def save
    main = Main.create(image: image,name: name, info:info, user_id: user_id)
    Detail.create(category_id: category_id, country_id: country_id, main_id: main.id)
  end

end