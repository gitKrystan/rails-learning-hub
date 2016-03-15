class Section < ActiveRecord::Base
  belongs_to :chapter

  validates :name, presence: true
  validates :number, presence: true
end
