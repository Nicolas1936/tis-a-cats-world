class Cat < ApplicationRecord
  filepath = "lib/json/cats_infos.json"
  serialized_cats_infos = File.read(filepath)
  cats_infos = JSON.parse(serialized_cats_infos)

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  belongs_to :user
  has_many_attached :photos

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 3 }
  validates :breed, presence: true, inclusion: { in: cats_infos["breed"] }
  validates :location, presence: true
  # validates :is_vaccinated, presence: true
  # validates :is_neutered, presence: true
  validates :estimated_age, presence: true, numericality: true
  validates :gender, inclusion: { in: %w[male female], message: "must be male or female" }
  validates :coat_colour, presence: true, inclusion: { in: cats_infos["coat_colour"] }
  validates :user_id, presence: true

  include PgSearch::Model

  pg_search_scope :search_cats,
    against: [ :name, :breed, :description, :gender, :location, :coat_colour ],
    associated_against: { user: [:org_name] },
    using: {
      tsearch: { prefix: true }
    }

  private

  def charge_json_cats_infos
    filepath = "lib/json/cats_infos.json"
    serialized_cats_infos = File.read(filepath)
    @cats_infos = JSON.parse(serialized_cats_infos)
  end
end
