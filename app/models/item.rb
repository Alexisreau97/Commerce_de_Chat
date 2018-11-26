class Item < ApplicationRecord
  validates :title, presence: {
    message: "Le titre doit être renseigné."
  }

  validates :description, presence: {
    message: "La description doit être renseigné."
  }

  validates :price, presence: {
    message: "Le prix doit être renseigné."
  }

  validates :image_url, presence: {
    message: "L'image doit être renseigné."
  }

  has_and_belongs_to_many :orders
end
