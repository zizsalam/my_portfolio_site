class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  attribute :name, :text
end
