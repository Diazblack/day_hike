class Trip < ApplicationRecord
  validates_presence_of :name

  has_many :trails

  def total_length
    trails.sum(:length)
  end

  def average_length
    trails.average(:length).to_f
  end
end
