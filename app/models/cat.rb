class Cat < ApplicationRecord
  acts_as_favoritable

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
  validates :photos, presence: true

  include PgSearch::Model

  scope :filter_by_gender, ->(gender) { where gender: gender }
  scope :filter_by_breed, ->(breed) { where breed: breed }
  scope :filter_by_location, ->(location) { where location: location }
  scope :filter_by_coat_colour, ->(coat_colour) { where coat_colour: coat_colour }
  scope :filter_by_estimated_age, ->(estimated_age) { where estimated_age: estimated_age }
  scope :filter_by_is_adopted, ->(is_adopted) { where is_adopted: is_adopted }

  pg_search_scope :search_cats,
    against: [
      :name,
      :breed,
      :description,
      :gender,
      :location,
      :coat_colour,
      :is_adopted
    ],
    associated_against: { user: [:org_name] },
    using: {
      tsearch: { prefix: true }
    }

  FILTER_OPTIONS = ["gender", "breed", "location", "coat_colour", "estimated_age", "is_adopted"].freeze

  def self.all_available_cats_infos(filter)
    Cat.all.map { |cat| cat.send(filter) }.uniq
  end

  def self.filter_options
    FILTER_OPTIONS
  end

  private

  def charge_json_cats_infos
    filepath = "lib/json/cats_infos.json"
    serialized_cats_infos = File.read(filepath)
    @cats_infos = JSON.parse(serialized_cats_infos)
  end
end
