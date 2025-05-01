class Category < ApplicationRecord
  has_many :tasks, dependent: :destroy

  # Validação para garantir que o nome da categoria seja único
  validates :name, presence: true, uniqueness: true
end
